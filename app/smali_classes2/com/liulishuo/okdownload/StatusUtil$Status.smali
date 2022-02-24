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
    .locals 8

    .line 1
    new-instance v0, Lcom/liulishuo/okdownload/StatusUtil$Status;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, Lcom/liulishuo/okdownload/StatusUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/StatusUtil$Status;->PENDING:Lcom/liulishuo/okdownload/StatusUtil$Status;

    .line 2
    new-instance v0, Lcom/liulishuo/okdownload/StatusUtil$Status;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lcom/liulishuo/okdownload/StatusUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/StatusUtil$Status;->RUNNING:Lcom/liulishuo/okdownload/StatusUtil$Status;

    .line 3
    new-instance v0, Lcom/liulishuo/okdownload/StatusUtil$Status;

    const/4 v3, 0x2

    const-string v4, "COMPLETED"

    invoke-direct {v0, v4, v3}, Lcom/liulishuo/okdownload/StatusUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/StatusUtil$Status;->COMPLETED:Lcom/liulishuo/okdownload/StatusUtil$Status;

    .line 4
    new-instance v0, Lcom/liulishuo/okdownload/StatusUtil$Status;

    const/4 v4, 0x3

    const-string v5, "IDLE"

    invoke-direct {v0, v5, v4}, Lcom/liulishuo/okdownload/StatusUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/StatusUtil$Status;->IDLE:Lcom/liulishuo/okdownload/StatusUtil$Status;

    .line 5
    new-instance v0, Lcom/liulishuo/okdownload/StatusUtil$Status;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5}, Lcom/liulishuo/okdownload/StatusUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liulishuo/okdownload/StatusUtil$Status;->UNKNOWN:Lcom/liulishuo/okdownload/StatusUtil$Status;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/liulishuo/okdownload/StatusUtil$Status;

    .line 6
    sget-object v7, Lcom/liulishuo/okdownload/StatusUtil$Status;->PENDING:Lcom/liulishuo/okdownload/StatusUtil$Status;

    aput-object v7, v6, v1

    sget-object v1, Lcom/liulishuo/okdownload/StatusUtil$Status;->RUNNING:Lcom/liulishuo/okdownload/StatusUtil$Status;

    aput-object v1, v6, v2

    sget-object v1, Lcom/liulishuo/okdownload/StatusUtil$Status;->COMPLETED:Lcom/liulishuo/okdownload/StatusUtil$Status;

    aput-object v1, v6, v3

    sget-object v1, Lcom/liulishuo/okdownload/StatusUtil$Status;->IDLE:Lcom/liulishuo/okdownload/StatusUtil$Status;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/liulishuo/okdownload/StatusUtil$Status;->$VALUES:[Lcom/liulishuo/okdownload/StatusUtil$Status;

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
