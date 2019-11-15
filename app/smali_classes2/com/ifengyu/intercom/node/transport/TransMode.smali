.class public final enum Lcom/ifengyu/intercom/node/transport/TransMode;
.super Ljava/lang/Enum;
.source "TransMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/intercom/node/transport/TransMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ifengyu/intercom/node/transport/TransMode;

.field public static final enum b:Lcom/ifengyu/intercom/node/transport/TransMode;

.field private static final synthetic d:[Lcom/ifengyu/intercom/node/transport/TransMode;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/intercom/node/transport/TransMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2, v2}, Lcom/ifengyu/intercom/node/transport/TransMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/transport/TransMode;->a:Lcom/ifengyu/intercom/node/transport/TransMode;

    new-instance v0, Lcom/ifengyu/intercom/node/transport/TransMode;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v3, v3}, Lcom/ifengyu/intercom/node/transport/TransMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/transport/TransMode;->b:Lcom/ifengyu/intercom/node/transport/TransMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ifengyu/intercom/node/transport/TransMode;

    sget-object v1, Lcom/ifengyu/intercom/node/transport/TransMode;->a:Lcom/ifengyu/intercom/node/transport/TransMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ifengyu/intercom/node/transport/TransMode;->b:Lcom/ifengyu/intercom/node/transport/TransMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ifengyu/intercom/node/transport/TransMode;->d:[Lcom/ifengyu/intercom/node/transport/TransMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ifengyu/intercom/node/transport/TransMode;->c:I

    return-void
.end method

.method public static a(I)Lcom/ifengyu/intercom/node/transport/TransMode;
    .locals 2

    if-ltz p0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/TransMode;->values()[Lcom/ifengyu/intercom/node/transport/TransMode;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid ordinal"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/node/transport/TransMode;->values()[Lcom/ifengyu/intercom/node/transport/TransMode;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static b(I)Z
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/node/transport/TransMode;->values()[Lcom/ifengyu/intercom/node/transport/TransMode;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/node/transport/TransMode;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/node/transport/TransMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/transport/TransMode;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/intercom/node/transport/TransMode;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/node/transport/TransMode;->d:[Lcom/ifengyu/intercom/node/transport/TransMode;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/node/transport/TransMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/node/transport/TransMode;

    return-object v0
.end method
