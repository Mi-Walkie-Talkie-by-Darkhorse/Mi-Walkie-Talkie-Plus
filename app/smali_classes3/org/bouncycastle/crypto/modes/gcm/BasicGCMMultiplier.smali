.class public Lorg/bouncycastle/crypto/modes/gcm/BasicGCMMultiplier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asInts([B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/BasicGCMMultiplier;->H:[I

    return-void
.end method

.method public multiplyH([B)V
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asInts([B)[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/gcm/BasicGCMMultiplier;->H:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([I[I)V

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asBytes([I[B)V

    return-void
.end method
