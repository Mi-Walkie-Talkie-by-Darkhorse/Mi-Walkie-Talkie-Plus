.class public final enum Lcom/liulishuo/okdownload/core/cause/EndCause;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/liulishuo/okdownload/core/cause/EndCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liulishuo/okdownload/core/cause/EndCause;

.field public static final enum CANCELED:Lcom/liulishuo/okdownload/core/cause/EndCause;

.field public static final enum COMPLETED:Lcom/liulishuo/okdownload/core/cause/EndCause;

.field public static final enum ERROR:Lcom/liulishuo/okdownload/core/cause/EndCause;

.field public static final enum FILE_BUSY:Lcom/liulishuo/okdownload/core/cause/EndCause;

.field public static final enum PRE_ALLOCATE_FAILED:Lcom/liulishuo/okdownload/core/cause/EndCause;

.field public static final enum SAME_TASK_BUSY:Lcom/liulishuo/okdownload/core/cause/EndCause;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const/4 v1, 0x0

    const-string v2, "COMPLETED"

    invoke-direct {v0, v2, v1}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/EndCause;->COMPLETED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    new-instance v0, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const/4 v2, 0x1

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v2}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/EndCause;->ERROR:Lcom/liulishuo/okdownload/core/cause/EndCause;

    new-instance v0, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const/4 v3, 0x2

    const-string v4, "CANCELED"

    invoke-direct {v0, v4, v3}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/EndCause;->CANCELED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    new-instance v0, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const/4 v4, 0x3

    const-string v5, "FILE_BUSY"

    invoke-direct {v0, v5, v4}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/EndCause;->FILE_BUSY:Lcom/liulishuo/okdownload/core/cause/EndCause;

    new-instance v0, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const/4 v5, 0x4

    const-string v6, "SAME_TASK_BUSY"

    invoke-direct {v0, v6, v5}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/EndCause;->SAME_TASK_BUSY:Lcom/liulishuo/okdownload/core/cause/EndCause;

    new-instance v0, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const/4 v6, 0x5

    const-string v7, "PRE_ALLOCATE_FAILED"

    invoke-direct {v0, v7, v6}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/EndCause;->PRE_ALLOCATE_FAILED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/liulishuo/okdownload/core/cause/EndCause;

    sget-object v8, Lcom/liulishuo/okdownload/core/cause/EndCause;->COMPLETED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    aput-object v8, v7, v1

    sget-object v1, Lcom/liulishuo/okdownload/core/cause/EndCause;->ERROR:Lcom/liulishuo/okdownload/core/cause/EndCause;

    aput-object v1, v7, v2

    sget-object v1, Lcom/liulishuo/okdownload/core/cause/EndCause;->CANCELED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    aput-object v1, v7, v3

    sget-object v1, Lcom/liulishuo/okdownload/core/cause/EndCause;->FILE_BUSY:Lcom/liulishuo/okdownload/core/cause/EndCause;

    aput-object v1, v7, v4

    sget-object v1, Lcom/liulishuo/okdownload/core/cause/EndCause;->SAME_TASK_BUSY:Lcom/liulishuo/okdownload/core/cause/EndCause;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/liulishuo/okdownload/core/cause/EndCause;->$VALUES:[Lcom/liulishuo/okdownload/core/cause/EndCause;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liulishuo/okdownload/core/cause/EndCause;
    .locals 1

    const-class v0, Lcom/liulishuo/okdownload/core/cause/EndCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/liulishuo/okdownload/core/cause/EndCause;

    return-object p0
.end method

.method public static values()[Lcom/liulishuo/okdownload/core/cause/EndCause;
    .locals 1

    sget-object v0, Lcom/liulishuo/okdownload/core/cause/EndCause;->$VALUES:[Lcom/liulishuo/okdownload/core/cause/EndCause;

    invoke-virtual {v0}, [Lcom/liulishuo/okdownload/core/cause/EndCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liulishuo/okdownload/core/cause/EndCause;

    return-object v0
.end method
