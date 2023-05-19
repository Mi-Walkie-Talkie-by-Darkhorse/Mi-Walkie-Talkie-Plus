.class public final enum Lcom/shanlitech/et/model/History$MsgType;
.super Ljava/lang/Enum;
.source "History.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/model/History;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MsgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/model/History$MsgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shanlitech/et/model/History$MsgType;

.field public static final enum AUDIO:Lcom/shanlitech/et/model/History$MsgType;

.field public static final enum INVITE_INFO:Lcom/shanlitech/et/model/History$MsgType;

.field public static final enum LEAVE_GROUP:Lcom/shanlitech/et/model/History$MsgType;

.field public static final enum LOC:Lcom/shanlitech/et/model/History$MsgType;

.field public static final enum PIC:Lcom/shanlitech/et/model/History$MsgType;

.field public static final enum TOKEN_ENTER:Lcom/shanlitech/et/model/History$MsgType;

.field public static final enum TRANS_GROUP:Lcom/shanlitech/et/model/History$MsgType;

.field public static final enum TXT:Lcom/shanlitech/et/model/History$MsgType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/shanlitech/et/model/History$MsgType;

    const-string v1, "TXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shanlitech/et/model/History$MsgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shanlitech/et/model/History$MsgType;->TXT:Lcom/shanlitech/et/model/History$MsgType;

    new-instance v1, Lcom/shanlitech/et/model/History$MsgType;

    const-string v3, "PIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shanlitech/et/model/History$MsgType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shanlitech/et/model/History$MsgType;->PIC:Lcom/shanlitech/et/model/History$MsgType;

    new-instance v3, Lcom/shanlitech/et/model/History$MsgType;

    const-string v5, "AUDIO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shanlitech/et/model/History$MsgType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shanlitech/et/model/History$MsgType;->AUDIO:Lcom/shanlitech/et/model/History$MsgType;

    new-instance v5, Lcom/shanlitech/et/model/History$MsgType;

    const-string v7, "LOC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shanlitech/et/model/History$MsgType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shanlitech/et/model/History$MsgType;->LOC:Lcom/shanlitech/et/model/History$MsgType;

    new-instance v7, Lcom/shanlitech/et/model/History$MsgType;

    const-string v9, "INVITE_INFO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/shanlitech/et/model/History$MsgType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/shanlitech/et/model/History$MsgType;->INVITE_INFO:Lcom/shanlitech/et/model/History$MsgType;

    new-instance v9, Lcom/shanlitech/et/model/History$MsgType;

    const-string v11, "TOKEN_ENTER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/shanlitech/et/model/History$MsgType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/shanlitech/et/model/History$MsgType;->TOKEN_ENTER:Lcom/shanlitech/et/model/History$MsgType;

    new-instance v11, Lcom/shanlitech/et/model/History$MsgType;

    const-string v13, "LEAVE_GROUP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/shanlitech/et/model/History$MsgType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/shanlitech/et/model/History$MsgType;->LEAVE_GROUP:Lcom/shanlitech/et/model/History$MsgType;

    new-instance v13, Lcom/shanlitech/et/model/History$MsgType;

    const-string v15, "TRANS_GROUP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/shanlitech/et/model/History$MsgType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/shanlitech/et/model/History$MsgType;->TRANS_GROUP:Lcom/shanlitech/et/model/History$MsgType;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/shanlitech/et/model/History$MsgType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 2
    sput-object v15, Lcom/shanlitech/et/model/History$MsgType;->$VALUES:[Lcom/shanlitech/et/model/History$MsgType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/model/History$MsgType;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/model/History$MsgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/model/History$MsgType;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/model/History$MsgType;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/model/History$MsgType;->$VALUES:[Lcom/shanlitech/et/model/History$MsgType;

    invoke-virtual {v0}, [Lcom/shanlitech/et/model/History$MsgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/model/History$MsgType;

    return-object v0
.end method
