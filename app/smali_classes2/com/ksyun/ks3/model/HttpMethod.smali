.class public final enum Lcom/ksyun/ks3/model/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ksyun/ks3/model/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ksyun/ks3/model/HttpMethod;

.field public static final enum b:Lcom/ksyun/ks3/model/HttpMethod;

.field public static final enum c:Lcom/ksyun/ks3/model/HttpMethod;

.field public static final enum d:Lcom/ksyun/ks3/model/HttpMethod;

.field public static final enum e:Lcom/ksyun/ks3/model/HttpMethod;

.field private static final synthetic g:[Lcom/ksyun/ks3/model/HttpMethod;


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ksyun/ks3/model/HttpMethod;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v3, v2}, Lcom/ksyun/ks3/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpMethod;->a:Lcom/ksyun/ks3/model/HttpMethod;

    new-instance v0, Lcom/ksyun/ks3/model/HttpMethod;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v4, v2}, Lcom/ksyun/ks3/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpMethod;->b:Lcom/ksyun/ks3/model/HttpMethod;

    new-instance v0, Lcom/ksyun/ks3/model/HttpMethod;

    const-string v1, "PUT"

    const-string v2, "PUT"

    invoke-direct {v0, v1, v5, v2}, Lcom/ksyun/ks3/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpMethod;->c:Lcom/ksyun/ks3/model/HttpMethod;

    new-instance v0, Lcom/ksyun/ks3/model/HttpMethod;

    const-string v1, "DELETE"

    const-string v2, "DELETE"

    invoke-direct {v0, v1, v6, v2}, Lcom/ksyun/ks3/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpMethod;->d:Lcom/ksyun/ks3/model/HttpMethod;

    new-instance v0, Lcom/ksyun/ks3/model/HttpMethod;

    const-string v1, "HEAD"

    const-string v2, "HEAD"

    invoke-direct {v0, v1, v7, v2}, Lcom/ksyun/ks3/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/HttpMethod;->e:Lcom/ksyun/ks3/model/HttpMethod;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ksyun/ks3/model/HttpMethod;

    sget-object v1, Lcom/ksyun/ks3/model/HttpMethod;->a:Lcom/ksyun/ks3/model/HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ksyun/ks3/model/HttpMethod;->b:Lcom/ksyun/ks3/model/HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ksyun/ks3/model/HttpMethod;->c:Lcom/ksyun/ks3/model/HttpMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ksyun/ks3/model/HttpMethod;->d:Lcom/ksyun/ks3/model/HttpMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ksyun/ks3/model/HttpMethod;->e:Lcom/ksyun/ks3/model/HttpMethod;

    aput-object v1, v0, v7

    sput-object v0, Lcom/ksyun/ks3/model/HttpMethod;->g:[Lcom/ksyun/ks3/model/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ksyun/ks3/model/HttpMethod;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ksyun/ks3/model/HttpMethod;
    .locals 1

    const-class v0, Lcom/ksyun/ks3/model/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ksyun/ks3/model/HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/ksyun/ks3/model/HttpMethod;
    .locals 1

    sget-object v0, Lcom/ksyun/ks3/model/HttpMethod;->g:[Lcom/ksyun/ks3/model/HttpMethod;

    invoke-virtual {v0}, [Lcom/ksyun/ks3/model/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksyun/ks3/model/HttpMethod;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/model/HttpMethod;->f:Ljava/lang/String;

    return-object v0
.end method
