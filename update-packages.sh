
# [Add JWT authentication packages]
# Ref: https://www.c-sharpcorner.com/article/asp-net-core-web-api-5-0-authentication-using-jwtjson-base-token/
dotnet add package Microsoft.AspNetCore.Authentication
dotnet add package System.IdentityModel.Tokens.Jwt
dotnet add package Microsoft.AspNetCore.Authentication.JwtBearer

# [Add EntityFrameworkCore packages]
dotnet add package Microsoft.EntityFrameworkCore
dotnet add package Microsoft.EntityFrameworkCore.SqlServer
dotnet add package Microsoft.EntityFrameworkCore.Tools
dotnet add package MySql.EntityFrameworkCore

# [File Logging]
dotnet add package Serilog.AspNetCore

# Decode OAuth
dotnet add package Google.Apis.Auth

# Swagger for api doc
dotnet add package Swashbuckle.AspNetCore

# Redis for cache and Lock for redis
dotnet add package StackExchange.Redis
dotnet add package RedLock.net

# AWS for send mail
dotnet add package AWSSDK.SimpleEmail
dotnet add package AWSSDK.S3
dotnet add package AWSSDK.Extensions.NETCore.Setup

# Cron/Quartz job for asp.net core
dotnet add package Quartz.AspNetCore
dotnet add package Quartz.Extensions.Hosting
dotnet add package Quartz.Extensions.DependencyInjection

# Mail with sendgrid (use Twilio SendGrid with HttpClientFactory)
#dotnet add package SendGrid
#dotnet add package SendGrid.Extensions.DependencyInjection
