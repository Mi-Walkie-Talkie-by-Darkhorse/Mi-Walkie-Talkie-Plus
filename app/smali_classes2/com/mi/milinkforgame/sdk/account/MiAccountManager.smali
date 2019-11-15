.class public Lcom/mi/milinkforgame/sdk/account/MiAccountManager;
.super Ljava/lang/Object;
.source "MiAccountManager.java"


# static fields
.field private static final PREF_B2_SECURITY:Ljava/lang/String; = "game_b2Security"

.field private static final PREF_B2_TOKEN:Ljava/lang/String; = "game_b2Token"

.field private static final PREF_FILE_NAME:Ljava/lang/String; = "game_milink_account"

.field private static final PREF_G_ID:Ljava/lang/String; = "game_gid"

.field private static final PREF_KEY_ID:Ljava/lang/String; = "game_keyId"

.field private static final PREF_PRIVATE_KEY:Ljava/lang/String; = "game_privateKey"

.field private static final PREF_PUBLIC_KEY:Ljava/lang/String; = "game_publicKey"

.field private static final PREF_USER_ID:Ljava/lang/String; = "game_userId"

.field private static final TAG:Ljava/lang/String; = "MiAccountManager"

.field private static sInstance:Lcom/mi/milinkforgame/sdk/account/MiAccountManager;


# instance fields
.field private volatile mB2Security:Ljava/lang/String;

.field private volatile mB2Token:Ljava/lang/String;

.field private volatile mGid:Ljava/lang/String;

.field private volatile mKeyId:Ljava/lang/String;

.field private mMiLinkLoginTime:J

.field private volatile mOldB2Security:Ljava/lang/String;

.field private volatile mOldB2Token:Ljava/lang/String;

.field private volatile mPrivateKey:Ljava/lang/String;

.field private volatile mPublicKey:Ljava/lang/String;

.field private volatile mUserId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mMiLinkLoginTime:J

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->loadAccount()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;
    .locals 2

    const-class v1, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->sInstance:Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->sInstance:Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    :cond_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->sInstance:Lcom/mi/milinkforgame/sdk/account/MiAccountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadAccount()V
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "game_milink_account"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "game_userId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mUserId:Ljava/lang/String;

    const-string v1, "game_publicKey"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mPublicKey:Ljava/lang/String;

    const-string v1, "game_keyId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mKeyId:Ljava/lang/String;

    const-string v1, "game_privateKey"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mPrivateKey:Ljava/lang/String;

    const-string v1, "game_b2Token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Token:Ljava/lang/String;

    const-string v1, "game_b2Security"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Security:Ljava/lang/String;

    const-string v1, "game_gid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mGid:Ljava/lang/String;

    return-void
.end method

.method private saveAccount()V
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "game_milink_account"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "game_userId"

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mUserId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "game_publicKey"

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mPublicKey:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "game_keyId"

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mKeyId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "game_privateKey"

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mPrivateKey:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "game_b2Token"

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Token:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_4
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "game_b2Security"

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Security:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_5
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "game_gid"

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mGid:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_6
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mUserId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mPublicKey:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mKeyId:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mPrivateKey:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Token:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Security:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mGid:Ljava/lang/String;

    goto :goto_6
.end method


# virtual methods
.method public declared-synchronized appHasLogined()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mPublicKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public generateSSecurity()V
    .locals 5

    const/16 v4, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mPrivateKey:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized getB2Security()[B
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MiAccountManager"

    const-string v1, "getB2Security()"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Security:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getB2SecurityByB2Token([B)[B
    .locals 2

    const-string v0, "MiAccountManager"

    const-string v1, "getB2SecurityByB2Token()"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Security:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mOldB2Token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mOldB2Security:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getB2Token()[B
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "MiAccountManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getB2Token() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Token:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getB2TokenStr()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Token:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mGid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getKeyId()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mKeyId:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyIdStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getPrivateKey()[B
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "MiAccountManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPrivateKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mPrivateKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mPrivateKey:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrivateKeyStr()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mPrivateKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPublicKeyStr()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mPublicKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const/4 v1, -0x1

    const-string v2, "MiAccountManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "login start, gid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", b2Token.length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", publicKey.length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "forceLogin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "MiAccountManager"

    const-string v1, "login but some argument is empty,return"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iput-object p4, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mKeyId:Ljava/lang/String;

    iput-object p2, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Token:Ljava/lang/String;

    iput-object p3, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mPublicKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mGid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->saveAccount()V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->login()V

    goto :goto_1
.end method

.method public loginMiLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, -0x1

    const-string v2, "MiAccountManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loginMiLink start, appUserId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",b2Token.length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", b2Security.length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mUserId:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Token:Ljava/lang/String;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mOldB2Token:Ljava/lang/String;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Security:Ljava/lang/String;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mOldB2Security:Ljava/lang/String;

    :cond_1
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Token:Ljava/lang/String;

    iput-object p3, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Security:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mMiLinkLoginTime:J

    const-string v0, "MiAccountManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loginMiLink end, milinkHasLogined()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->milinkHasLogined()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->saveAccount()V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public logoff()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mUserId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mPublicKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mPrivateKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Token:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Security:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mOldB2Token:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mOldB2Security:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mMiLinkLoginTime:J

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->saveAccount()V

    return-void
.end method

.method public logoffMiLink()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Token:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Security:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mOldB2Token:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mOldB2Security:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mMiLinkLoginTime:J

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->saveAccount()V

    return-void
.end method

.method public declared-synchronized milinkHasLogined()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->mB2Security:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
