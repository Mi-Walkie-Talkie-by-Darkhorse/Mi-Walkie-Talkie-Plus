.class public abstract Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;
.super Ljava/lang/Object;


# instance fields
.field private params:Lorg/bouncycastle/asn1/x9/X9ECParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createParameters()Lorg/bouncycastle/asn1/x9/X9ECParameters;
.end method

.method public declared-synchronized getParameters()Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lorg/bouncycastle/asn1/x9/X9ECParameters;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;->createParameters()Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lorg/bouncycastle/asn1/x9/X9ECParameters;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lorg/bouncycastle/asn1/x9/X9ECParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
