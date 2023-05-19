.class public final enum Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;
.super Ljava/lang/Enum;
.source "SpeakEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/notice/event/SpeakEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpeakType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

.field public static final enum ERROR:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

.field public static final enum MEMBER_STARTED:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

.field public static final enum MEMBER_STOPED:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

.field public static final enum STARTED:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

.field public static final enum START_PLAYING:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

.field public static final enum STOPED:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

.field public static final enum STOP_PLAYING:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->ERROR:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    .line 2
    new-instance v1, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->STARTED:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    .line 3
    new-instance v3, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    const-string v5, "STOPED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->STOPED:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    .line 4
    new-instance v5, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    const-string v7, "MEMBER_STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->MEMBER_STARTED:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    .line 5
    new-instance v7, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    const-string v9, "MEMBER_STOPED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->MEMBER_STOPED:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    .line 6
    new-instance v9, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    const-string v11, "STOP_PLAYING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->STOP_PLAYING:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    .line 7
    new-instance v11, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    const-string v13, "START_PLAYING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->START_PLAYING:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->$VALUES:[Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

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
    iput p3, p0, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->$VALUES:[Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    invoke-virtual {v0}, [Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->value:I

    return v0
.end method
