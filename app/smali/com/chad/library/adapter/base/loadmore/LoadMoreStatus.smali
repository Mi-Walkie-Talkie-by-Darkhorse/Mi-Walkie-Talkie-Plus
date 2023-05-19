.class public final enum Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;
.super Ljava/lang/Enum;
.source "BaseLoadMoreView.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;",
        "",
        "(Ljava/lang/String;I)V",
        "Complete",
        "Loading",
        "Fail",
        "End",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum a:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

.field public static final enum b:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

.field public static final enum c:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

.field public static final enum d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

.field private static final synthetic e:[Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    const-string v1, "Complete"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->a:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    new-instance v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    const-string v1, "Loading"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->b:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    new-instance v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    const-string v1, "Fail"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->c:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    new-instance v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    const-string v1, "End"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    invoke-static {}, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->a()[Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object v0

    sput-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->e:[Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->a:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->b:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->c:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->d:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;
    .locals 1

    const-class v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    return-object p0
.end method

.method public static values()[Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;
    .locals 1

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->e:[Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    return-object v0
.end method
