.class public final enum Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;
.super Ljava/lang/Enum;
.source "ResultEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/notice/event/ResultEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum AVATAR:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum CONTACT_REMARK:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum EMAIL:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum GROUP_CREATE:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum GROUP_DESTROY:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum GROUP_INFO:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum GROUP_MEMBER_ADD:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum GROUP_MEMBER_REMOVE:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum GROUP_NAME:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum GROUP_OWNER:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum NAME:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum NAME_INGROUP:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum NON:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum PHONE:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum PWD:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum REPORT_LOC:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum SEX:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum USER_DISABLE:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum USER_ENABLE:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field public static final enum USER_ROLE:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v0, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v1, "NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->NAME:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 2
    new-instance v1, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v3, "PWD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->PWD:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 3
    new-instance v3, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v5, "AVATAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->AVATAR:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 4
    new-instance v5, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v7, "SEX"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->SEX:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 5
    new-instance v7, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v9, "NON"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->NON:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 6
    new-instance v9, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v11, "NAME_INGROUP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->NAME_INGROUP:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 7
    new-instance v11, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v13, "CONTACT_REMARK"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->CONTACT_REMARK:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 8
    new-instance v13, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v15, "GROUP_INFO"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->GROUP_INFO:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 9
    new-instance v15, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v14, "GROUP_OWNER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->GROUP_OWNER:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 10
    new-instance v14, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v12, "GROUP_NAME"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->GROUP_NAME:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 11
    new-instance v12, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v10, "GROUP_CREATE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->GROUP_CREATE:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 12
    new-instance v10, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v8, "GROUP_MEMBER_REMOVE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->GROUP_MEMBER_REMOVE:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 13
    new-instance v8, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v6, "GROUP_MEMBER_ADD"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->GROUP_MEMBER_ADD:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 14
    new-instance v6, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v4, "GROUP_DESTROY"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->GROUP_DESTROY:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 15
    new-instance v4, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v2, "EMAIL"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->EMAIL:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 16
    new-instance v2, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v6, "PHONE"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->PHONE:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 17
    new-instance v6, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v4, "REPORT_LOC"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->REPORT_LOC:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 18
    new-instance v4, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v2, "USER_ROLE"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->USER_ROLE:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 19
    new-instance v2, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v6, "USER_ENABLE"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->USER_ENABLE:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    .line 20
    new-instance v6, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const-string v4, "USER_DISABLE"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->USER_DISABLE:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const/16 v4, 0x14

    new-array v4, v4, [Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    aput-object v6, v4, v2

    .line 21
    sput-object v4, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->$VALUES:[Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->$VALUES:[Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-virtual {v0}, [Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    return-object v0
.end method
