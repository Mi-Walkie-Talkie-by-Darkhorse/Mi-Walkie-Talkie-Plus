.class public Lcom/xiaomi/account/utils/LogEncryptUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateEncryptMessageLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils;->encrypt(Ljava/lang/String;)Lcom/xiaomi/accountsdk/diagnosis/encrypt/PassportEnvEncryptUtils$EncryptResult;

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

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method
