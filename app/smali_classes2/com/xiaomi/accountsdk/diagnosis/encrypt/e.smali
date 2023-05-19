.class Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/accountsdk/diagnosis/b/c;->a(I)Lcom/xiaomi/accountsdk/diagnosis/b/c;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/accountsdk/diagnosis/b/b;->a(Lcom/xiaomi/accountsdk/diagnosis/b/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/diagnosis/b/a;->a(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a()Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;-><init>()V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils;->encrypt(Ljava/lang/String;)Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptResult;

    move-result-object v0

    const-string v1, "#&^%s!!%s^&#"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptResult;->encryptedKey:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v0, v0, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptResult;->content:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method


# virtual methods
.method a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-direct {p0, p3}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result p3

    add-int/lit8 p3, p3, 0x0

    if-eqz p4, :cond_0

    invoke-static {p4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p2, p4}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    add-int/2addr p3, p1

    :cond_0
    return p3
.end method
