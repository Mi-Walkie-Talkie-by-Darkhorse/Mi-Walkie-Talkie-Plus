.class public final enum Lcom/liulishuo/okdownload/core/cause/EndCause;
.super Ljava/lang/Enum;
.source "EndCause.java"


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
    .locals 13

    .line 1
    new-instance v0, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const-string v1, "COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/core/cause/EndCause;->COMPLETED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    .line 2
    new-instance v1, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/liulishuo/okdownload/core/cause/EndCause;->ERROR:Lcom/liulishuo/okdownload/core/cause/EndCause;

    .line 3
    new-instance v3, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const-string v5, "CANCELED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/liulishuo/okdownload/core/cause/EndCause;->CANCELED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    .line 4
    new-instance v5, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const-string v7, "FILE_BUSY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/liulishuo/okdownload/core/cause/EndCause;->FILE_BUSY:Lcom/liulishuo/okdownload/core/cause/EndCause;

    .line 5
    new-instance v7, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const-string v9, "SAME_TASK_BUSY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/liulishuo/okdownload/core/cause/EndCause;->SAME_TASK_BUSY:Lcom/liulishuo/okdownload/core/cause/EndCause;

    .line 6
    new-instance v9, Lcom/liulishuo/okdownload/core/cause/EndCause;

    const-string v11, "PRE_ALLOCATE_FAILED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/liulishuo/okdownload/core/cause/EndCause;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/liulishuo/okdownload/core/cause/EndCause;->PRE_ALLOCATE_FAILED:Lcom/liulishuo/okdownload/core/cause/EndCause;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/liulishuo/okdownload/core/cause/EndCause;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/liulishuo/okdownload/core/cause/EndCause;->$VALUES:[Lcom/liulishuo/okdownload/core/cause/EndCause;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liulishuo/okdownload/core/cause/EndCause;
    .locals 1

    .line 1
    const-class v0, Lcom/liulishuo/okdownload/core/cause/EndCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/liulishuo/okdownload/core/cause/EndCause;

    return-object p0
.end method

.method public static values()[Lcom/liulishuo/okdownload/core/cause/EndCause;
    .locals 1

    .line 1
    sget-object v0, Lcom/liulishuo/okdownload/core/cause/EndCause;->$VALUES:[Lcom/liulishuo/okdownload/core/cause/EndCause;

    invoke-virtual {v0}, [Lcom/liulishuo/okdownload/core/cause/EndCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liulishuo/okdownload/core/cause/EndCause;

    return-object v0
.end method
