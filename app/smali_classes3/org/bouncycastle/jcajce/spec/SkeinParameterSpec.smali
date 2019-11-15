.class public Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$1;,
        Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$Builder;
    }
.end annotation


# static fields
.field public static final PARAM_TYPE_CONFIG:I = 0x4

.field public static final PARAM_TYPE_KEY:I = 0x0

.field public static final PARAM_TYPE_KEY_IDENTIFIER:I = 0x10

.field public static final PARAM_TYPE_MESSAGE:I = 0x30

.field public static final PARAM_TYPE_NONCE:I = 0x14

.field public static final PARAM_TYPE_OUTPUT:I = 0x3f

.field public static final PARAM_TYPE_PERSONALISATION:I = 0x8

.field public static final PARAM_TYPE_PUBLIC_KEY:I = 0xc


# instance fields
.field private parameters:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getKey()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getKeyIdentifier()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getNonce()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getPersonalisation()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->parameters:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
