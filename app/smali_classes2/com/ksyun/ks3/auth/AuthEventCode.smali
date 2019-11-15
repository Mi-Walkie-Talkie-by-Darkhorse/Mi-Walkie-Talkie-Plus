.class public final enum Lcom/ksyun/ks3/auth/AuthEventCode;
.super Ljava/lang/Enum;
.source "AuthEventCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ksyun/ks3/auth/AuthEventCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ksyun/ks3/auth/AuthEventCode;

.field public static final enum b:Lcom/ksyun/ks3/auth/AuthEventCode;

.field private static final synthetic c:[Lcom/ksyun/ks3/auth/AuthEventCode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ksyun/ks3/auth/AuthEventCode;

    const-string v1, "Success"

    invoke-direct {v0, v1, v2}, Lcom/ksyun/ks3/auth/AuthEventCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksyun/ks3/auth/AuthEventCode;->a:Lcom/ksyun/ks3/auth/AuthEventCode;

    new-instance v0, Lcom/ksyun/ks3/auth/AuthEventCode;

    const-string v1, "Failure"

    invoke-direct {v0, v1, v3}, Lcom/ksyun/ks3/auth/AuthEventCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksyun/ks3/auth/AuthEventCode;->b:Lcom/ksyun/ks3/auth/AuthEventCode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ksyun/ks3/auth/AuthEventCode;

    sget-object v1, Lcom/ksyun/ks3/auth/AuthEventCode;->a:Lcom/ksyun/ks3/auth/AuthEventCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ksyun/ks3/auth/AuthEventCode;->b:Lcom/ksyun/ks3/auth/AuthEventCode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ksyun/ks3/auth/AuthEventCode;->c:[Lcom/ksyun/ks3/auth/AuthEventCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ksyun/ks3/auth/AuthEventCode;
    .locals 1

    const-class v0, Lcom/ksyun/ks3/auth/AuthEventCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ksyun/ks3/auth/AuthEventCode;

    return-object v0
.end method

.method public static values()[Lcom/ksyun/ks3/auth/AuthEventCode;
    .locals 1

    sget-object v0, Lcom/ksyun/ks3/auth/AuthEventCode;->c:[Lcom/ksyun/ks3/auth/AuthEventCode;

    invoke-virtual {v0}, [Lcom/ksyun/ks3/auth/AuthEventCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksyun/ks3/auth/AuthEventCode;

    return-object v0
.end method
