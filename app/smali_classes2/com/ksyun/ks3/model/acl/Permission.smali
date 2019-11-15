.class public final enum Lcom/ksyun/ks3/model/acl/Permission;
.super Ljava/lang/Enum;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ksyun/ks3/model/acl/Permission;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ksyun/ks3/model/acl/Permission;

.field public static final enum b:Lcom/ksyun/ks3/model/acl/Permission;

.field public static final enum c:Lcom/ksyun/ks3/model/acl/Permission;

.field private static final synthetic f:[Lcom/ksyun/ks3/model/acl/Permission;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/ksyun/ks3/model/acl/Permission;

    const-string v1, "FullControl"

    const-string v2, "FULL_CONTROL"

    const-string v3, "x-kss-grant-full-control"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/ksyun/ks3/model/acl/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/acl/Permission;->a:Lcom/ksyun/ks3/model/acl/Permission;

    new-instance v0, Lcom/ksyun/ks3/model/acl/Permission;

    const-string v1, "Read"

    const-string v2, "READ"

    const-string v3, "x-kss-grant-read"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/ksyun/ks3/model/acl/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/acl/Permission;->b:Lcom/ksyun/ks3/model/acl/Permission;

    new-instance v0, Lcom/ksyun/ks3/model/acl/Permission;

    const-string v1, "Write"

    const-string v2, "WRITE"

    const-string v3, "x-kss-grant-write"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/ksyun/ks3/model/acl/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ksyun/ks3/model/acl/Permission;->c:Lcom/ksyun/ks3/model/acl/Permission;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ksyun/ks3/model/acl/Permission;

    sget-object v1, Lcom/ksyun/ks3/model/acl/Permission;->a:Lcom/ksyun/ks3/model/acl/Permission;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ksyun/ks3/model/acl/Permission;->b:Lcom/ksyun/ks3/model/acl/Permission;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ksyun/ks3/model/acl/Permission;->c:Lcom/ksyun/ks3/model/acl/Permission;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ksyun/ks3/model/acl/Permission;->f:[Lcom/ksyun/ks3/model/acl/Permission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ksyun/ks3/model/acl/Permission;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/ksyun/ks3/model/acl/Permission;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ksyun/ks3/model/acl/Permission;
    .locals 1

    const-class v0, Lcom/ksyun/ks3/model/acl/Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ksyun/ks3/model/acl/Permission;

    return-object v0
.end method

.method public static values()[Lcom/ksyun/ks3/model/acl/Permission;
    .locals 1

    sget-object v0, Lcom/ksyun/ks3/model/acl/Permission;->f:[Lcom/ksyun/ks3/model/acl/Permission;

    invoke-virtual {v0}, [Lcom/ksyun/ks3/model/acl/Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksyun/ks3/model/acl/Permission;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/model/acl/Permission;->d:Ljava/lang/String;

    return-object v0
.end method
