# 1. OpenJDK 17 기반 이미지
FROM openjdk:17

# 2. VERSION ARG (Jenkins 파이프라인에서 넘길 수 있음)
ARG VERSION

# 3. JAR 파일 복사
COPY target/stswebjpa-0.0.1-SNAPSHOT.jar /app/stswebjpa.jar

# 4. 메타데이터
LABEL title="Member App" \
      version="$VERSION" \
      description="This image is member service with HTTPS"

# 5. 환경 변수
ENV APP_HOME=/app
WORKDIR $APP_HOME

# 6. 포트 노출 (HTTP 8080 + HTTPS 443 둘 다 가능)
EXPOSE 8080 443

# 7. 업로드 볼륨
VOLUME /app/upload

# 8. 실행 커맨드
ENTRYPOINT ["java", "-jar", "stswebjpa.jar"]
