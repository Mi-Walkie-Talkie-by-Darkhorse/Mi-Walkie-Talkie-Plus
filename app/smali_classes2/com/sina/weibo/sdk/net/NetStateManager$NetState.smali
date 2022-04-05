.class public final enum Lcom/sina/weibo/sdk/net/NetStateManager$NetState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/net/NetStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sina/weibo/sdk/net/NetStateManager$NetState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

.field public static final enum b:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

.field public static final enum c:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

.field private static final synthetic d:[Lcom/sina/weibo/sdk/net/NetStateManager$NetState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    const/4 v1, 0x0

    const-string v2, "Mobile"

    invoke-direct {v0, v2, v1}, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;->a:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    new-instance v0, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    const/4 v2, 0x1

    const-string v3, "WIFI"

    invoke-direct {v0, v3, v2}, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;->b:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    new-instance v0, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    const/4 v3, 0x2

    const-string v4, "NOWAY"

    invoke-direct {v0, v4, v3}, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;->c:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    sget-object v5, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;->a:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    aput-object v5, v4, v1

    sget-object v1, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;->b:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;->d:[Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sina/weibo/sdk/net/NetStateManager$NetState;
    .locals 1

    const-class v0, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    return-object p0
.end method

.method public static values()[Lcom/sina/weibo/sdk/net/NetStateManager$NetState;
    .locals 4

    sget-object v0, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;->d:[Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    array-length v1, v0

    new-array v2, v1, [Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
