.class Lorg/bouncycastle/crypto/tls/TlsSessionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsSession;


# instance fields
.field final sessionID:[B

.field sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;


# direct methods
.method constructor <init>([BLorg/bouncycastle/crypto/tls/SessionParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'sessionID\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    array-length v0, p1

    const/16 v1, 0x20

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'sessionID\' must have length between 1 and 32 bytes, inclusive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;->sessionID:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    return-void
.end method


# virtual methods
.method public declared-synchronized exportSessionParameters()Lorg/bouncycastle/crypto/tls/SessionParameters;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters;->copy()Lorg/bouncycastle/crypto/tls/SessionParameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSessionID()[B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;->sessionID:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isResumable()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

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
