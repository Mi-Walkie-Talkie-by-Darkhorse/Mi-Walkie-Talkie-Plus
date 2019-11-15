.class public Lorg/apache/commons/logging/LogConfigurationException;
.super Ljava/lang/RuntimeException;
.source "LogConfigurationException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
