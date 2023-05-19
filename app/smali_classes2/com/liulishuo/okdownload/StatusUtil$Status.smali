.class public final enum Lcom/liulishuo/okdownload/StatusUtil$Status;
.super Ljava/lang/Enum;
.source "StatusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/StatusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/liulishuo/okdownload/StatusUtil$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liulishuo/okdownload/StatusUtil$Status;

.field public static final enum COMPLETED:Lcom/liulishuo/okdownload/StatusUtil$Status;

.field public static final enum IDLE:Lcom/liulishuo/okdownload/StatusUtil$Status;

.field public static final enum PENDING:Lcom/liulishuo/okdownload/StatusUtil$Status;

.field public static final enum RUNNING:Lcom/liulishuo/okdownload/StatusUtil$Status;

.field public static final enum UNKNOWN:Lcom/liulishuo/okdownload/StatusUtil$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/liulishuo/okdownload/StatusUtil$Status;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/liulishuo/okdownload/StatusUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/StatusUtil$Status;->PENDING:Lcom/liulishuo/okdownload/StatusUtil$Status;

    .line 2
    new-instance v1, Lcom/liulishuo/okdownload/StatusUtil$Status;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/liulishuo/okdownload/StatusUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/liulishuo/okdownload/StatusUtil$Status;->RUNNING:Lcom/liulishuo/okdownload/StatusUtil$Status;

    .line 3
    new-instance v3, Lcom/liulishuo/okdownload/StatusUtil$Status;

    const-string v5, "COMPLETED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/liulishuo/okdownload/StatusUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/liulishuo/okdownload/StatusUtil$Status;->COMPLETED:Lcom/liulishuo/okdownload/StatusUtil$Status;

    .line 4
    new-instance v5, Lcom/liulishuo/okdownload/StatusUtil$Status;

    const-string v7, "IDLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/liulishuo/okdownload/StatusUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/liulishuo/okdownload/StatusUtil$Status;->IDLE:Lcom/liulishuo/okdownload/StatusUtil$Status;

    .line 5
    new-instance v7, Lcom/liulishuo/okdownload/StatusUtil$Status;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/liulishuo/okdownload/StatusUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/liulishuo/okdownload/StatusUtil$Status;->UNKNOWN:Lcom/liulishuo/okdownload/StatusUtil$Status;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/liulishuo/okdownload/StatusUtil$Status;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/liulishuo/okdownload/StatusUtil$Status;->$VALUES:[Lcom/liulishuo/okdownload/StatusUtil$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liulishuo/okdownload/StatusUtil$Status;
    .locals 1

    .line 1
    const-class v0, Lcom/liulishuo/okdownload/StatusUtil$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/liulishuo/okdownload/StatusUtil$Status;

    return-object p0
.end method

.method public static values()[Lcom/liulishuo/okdownload/StatusUtil$Status;
    .locals 1

    .line 1
    sget-object v0, Lcom/liulishuo/okdownload/StatusUtil$Status;->$VALUES:[Lcom/liulishuo/okdownload/StatusUtil$Status;

    invoke-virtual {v0}, [Lcom/liulishuo/okdownload/StatusUtil$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liulishuo/okdownload/StatusUtil$Status;

    return-object v0
.end method
