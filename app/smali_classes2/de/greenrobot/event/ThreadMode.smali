.class public final enum Lde/greenrobot/event/ThreadMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/greenrobot/event/ThreadMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lde/greenrobot/event/ThreadMode;

.field public static final enum b:Lde/greenrobot/event/ThreadMode;

.field public static final enum c:Lde/greenrobot/event/ThreadMode;

.field public static final enum d:Lde/greenrobot/event/ThreadMode;

.field private static final synthetic e:[Lde/greenrobot/event/ThreadMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lde/greenrobot/event/ThreadMode;

    const/4 v1, 0x0

    const-string v2, "PostThread"

    invoke-direct {v0, v2, v1}, Lde/greenrobot/event/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/event/ThreadMode;->a:Lde/greenrobot/event/ThreadMode;

    new-instance v0, Lde/greenrobot/event/ThreadMode;

    const/4 v2, 0x1

    const-string v3, "MainThread"

    invoke-direct {v0, v3, v2}, Lde/greenrobot/event/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/event/ThreadMode;->b:Lde/greenrobot/event/ThreadMode;

    new-instance v0, Lde/greenrobot/event/ThreadMode;

    const/4 v3, 0x2

    const-string v4, "BackgroundThread"

    invoke-direct {v0, v4, v3}, Lde/greenrobot/event/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/event/ThreadMode;->c:Lde/greenrobot/event/ThreadMode;

    new-instance v0, Lde/greenrobot/event/ThreadMode;

    const/4 v4, 0x3

    const-string v5, "Async"

    invoke-direct {v0, v5, v4}, Lde/greenrobot/event/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/event/ThreadMode;->d:Lde/greenrobot/event/ThreadMode;

    const/4 v5, 0x4

    new-array v5, v5, [Lde/greenrobot/event/ThreadMode;

    sget-object v6, Lde/greenrobot/event/ThreadMode;->a:Lde/greenrobot/event/ThreadMode;

    aput-object v6, v5, v1

    sget-object v1, Lde/greenrobot/event/ThreadMode;->b:Lde/greenrobot/event/ThreadMode;

    aput-object v1, v5, v2

    sget-object v1, Lde/greenrobot/event/ThreadMode;->c:Lde/greenrobot/event/ThreadMode;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lde/greenrobot/event/ThreadMode;->e:[Lde/greenrobot/event/ThreadMode;

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

.method public static valueOf(Ljava/lang/String;)Lde/greenrobot/event/ThreadMode;
    .locals 1

    const-class v0, Lde/greenrobot/event/ThreadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/greenrobot/event/ThreadMode;

    return-object p0
.end method

.method public static values()[Lde/greenrobot/event/ThreadMode;
    .locals 1

    sget-object v0, Lde/greenrobot/event/ThreadMode;->e:[Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v0}, [Lde/greenrobot/event/ThreadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/greenrobot/event/ThreadMode;

    return-object v0
.end method
