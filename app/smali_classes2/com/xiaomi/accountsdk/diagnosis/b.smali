.class public Lcom/xiaomi/accountsdk/diagnosis/b;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/io/File;
    .locals 3

    invoke-static {}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, ".XMPassport"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static b()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/accountsdk/diagnosis/b;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "logcat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/accountsdk/diagnosis/b;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
