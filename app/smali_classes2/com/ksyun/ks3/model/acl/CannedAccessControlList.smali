.class public final enum Lcom/ksyun/ks3/model/acl/CannedAccessControlList;
.super Ljava/lang/Enum;
.source "CannedAccessControlList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ksyun/ks3/model/acl/CannedAccessControlList;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

.field public static final enum b:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

.field public static final enum c:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

.field private static final synthetic e:[Lcom/ksyun/ks3/model/acl/CannedAccessControlList;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    const-string v1, "Private"

    const-string v2, "private"

    invoke-direct {v0, v1, v3, v2}, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->a:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    new-instance v0, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    const-string v1, "PublicRead"

    const-string v2, "public-read"

    invoke-direct {v0, v1, v4, v2}, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->b:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    new-instance v0, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    const-string v1, "PublicReadWrite"

    const-string v2, "public-read-write"

    invoke-direct {v0, v1, v5, v2}, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->c:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    sget-object v1, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->a:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->b:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->c:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->e:[Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

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

    iput-object p3, p0, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ksyun/ks3/model/acl/CannedAccessControlList;
    .locals 1

    const-class v0, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    return-object v0
.end method

.method public static values()[Lcom/ksyun/ks3/model/acl/CannedAccessControlList;
    .locals 1

    sget-object v0, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->e:[Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    invoke-virtual {v0}, [Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->d:Ljava/lang/String;

    return-object v0
.end method
