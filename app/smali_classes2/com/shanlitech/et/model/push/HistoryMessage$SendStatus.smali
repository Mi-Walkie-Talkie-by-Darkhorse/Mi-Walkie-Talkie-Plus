.class public final enum Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;
.super Ljava/lang/Enum;
.source "HistoryMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/model/push/HistoryMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SendStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

.field public static final enum Failed:Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

.field public static final enum Sending:Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

.field public static final enum Succeed:Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;


# instance fields
.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

    const-string v1, "Succeed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;->Succeed:Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

    new-instance v1, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

    const-string v3, "Failed"

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v1, v3, v4, v5}, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;->Failed:Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

    new-instance v3, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

    const-string v5, "Sending"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;->Sending:Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;->$VALUES:[Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;->status:I

    return-void
.end method

.method static synthetic access$100(Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;->status:I

    return p0
.end method

.method public static build(I)Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;->Succeed:Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;->Sending:Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;->Succeed:Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;->Failed:Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;->$VALUES:[Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

    invoke-virtual {v0}, [Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage$SendStatus;->status:I

    return v0
.end method
