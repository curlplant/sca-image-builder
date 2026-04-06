# 基于openjdk构建带Log4j2漏洞的测试镜像
FROM openjdk:11-jre-slim

# 下载带Log4j2 CVE-2021-44228漏洞的jar包
RUN wget https://github.com/christophetd/log4shell-vulnerable-app/releases/download/v1.0.0/log4shell-vulnerable-app-0.0.1-SNAPSHOT.jar

# 启动命令
CMD ["java", "-jar", "log4shell-vulnerable-app-0.0.1-SNAPSHOT.jar"]
