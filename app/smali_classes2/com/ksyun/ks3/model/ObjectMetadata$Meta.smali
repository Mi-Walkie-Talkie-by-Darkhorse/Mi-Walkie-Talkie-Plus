.class public final enum Lcom/ksyun/ks3/model/ObjectMetadata$Meta;
.super Ljava/lang/Enum;
.source "ObjectMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/ks3/model/ObjectMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Meta"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ksyun/ks3/model/ObjectMetadata$Meta;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

.field public static final enum b:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

.field public static final enum c:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

.field public static final enum d:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

.field public static final enum e:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

.field public static final enum f:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

.field public static final enum g:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

.field public static final enum h:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

.field public static final enum i:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

.field private static final synthetic k:[Lcom/ksyun/ks3/model/ObjectMetadata$Meta;


# instance fields
.field private j:Lcom/ksyun/ks3/model/HttpHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    const-string v1, "ContentType"

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->m:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-direct {v0, v1, v4, v2}, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;-><init>(Ljava/lang/String;ILcom/ksyun/ks3/model/HttpHeaders;)V

    sput-object v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->a:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    new-instance v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    const-string v1, "CacheControl"

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->l:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-direct {v0, v1, v5, v2}, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;-><init>(Ljava/lang/String;ILcom/ksyun/ks3/model/HttpHeaders;)V

    sput-object v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->b:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    new-instance v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    const-string v1, "ContentLength"

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->k:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-direct {v0, v1, v6, v2}, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;-><init>(Ljava/lang/String;ILcom/ksyun/ks3/model/HttpHeaders;)V

    sput-object v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->c:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    new-instance v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    const-string v1, "ContentDisposition"

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->n:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-direct {v0, v1, v7, v2}, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;-><init>(Ljava/lang/String;ILcom/ksyun/ks3/model/HttpHeaders;)V

    sput-object v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->d:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    new-instance v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    const-string v1, "ContentEncoding"

    sget-object v2, Lcom/ksyun/ks3/model/HttpHeaders;->o:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-direct {v0, v1, v8, v2}, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;-><init>(Ljava/lang/String;ILcom/ksyun/ks3/model/HttpHeaders;)V

    sput-object v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->e:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    new-instance v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    const-string v1, "Expires"

    const/4 v2, 0x5

    sget-object v3, Lcom/ksyun/ks3/model/HttpHeaders;->p:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;-><init>(Ljava/lang/String;ILcom/ksyun/ks3/model/HttpHeaders;)V

    sput-object v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->f:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    new-instance v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    const-string v1, "LastModified"

    const/4 v2, 0x6

    sget-object v3, Lcom/ksyun/ks3/model/HttpHeaders;->B:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;-><init>(Ljava/lang/String;ILcom/ksyun/ks3/model/HttpHeaders;)V

    sput-object v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->g:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    new-instance v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    const-string v1, "Etag"

    const/4 v2, 0x7

    sget-object v3, Lcom/ksyun/ks3/model/HttpHeaders;->A:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;-><init>(Ljava/lang/String;ILcom/ksyun/ks3/model/HttpHeaders;)V

    sput-object v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->h:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    new-instance v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    const-string v1, "ContentMD5"

    const/16 v2, 0x8

    sget-object v3, Lcom/ksyun/ks3/model/HttpHeaders;->e:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-direct {v0, v1, v2, v3}, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;-><init>(Ljava/lang/String;ILcom/ksyun/ks3/model/HttpHeaders;)V

    sput-object v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->i:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    sget-object v1, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->a:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->b:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->c:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->d:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->e:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->f:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->g:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->h:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->i:Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->k:[Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/ksyun/ks3/model/HttpHeaders;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksyun/ks3/model/HttpHeaders;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->j:Lcom/ksyun/ks3/model/HttpHeaders;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ksyun/ks3/model/ObjectMetadata$Meta;
    .locals 1

    const-class v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    return-object v0
.end method

.method public static values()[Lcom/ksyun/ks3/model/ObjectMetadata$Meta;
    .locals 1

    sget-object v0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->k:[Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    invoke-virtual {v0}, [Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksyun/ks3/model/ObjectMetadata$Meta;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/model/ObjectMetadata$Meta;->j:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
