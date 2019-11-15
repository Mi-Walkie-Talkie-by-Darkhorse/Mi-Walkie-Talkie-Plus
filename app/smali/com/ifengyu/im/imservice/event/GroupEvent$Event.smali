.class public final enum Lcom/ifengyu/im/imservice/event/GroupEvent$Event;
.super Ljava/lang/Enum;
.source "GroupEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/event/GroupEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/imservice/event/GroupEvent$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

.field public static final enum CHANGE_GROUP_INFO_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

.field public static final enum CHANGE_GROUP_INFO_SUCCESS:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

.field public static final enum CHANGE_GROUP_INFO_TIMEOUT:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

.field public static final enum CHANGE_GROUP_MEMBER_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

.field public static final enum CHANGE_GROUP_MEMBER_SUCCESS:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

.field public static final enum CHANGE_GROUP_MEMBER_TIMEOUT:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

.field public static final enum CREATE_GROUP_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

.field public static final enum CREATE_GROUP_OK:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

.field public static final enum CREATE_GROUP_TIMEOUT:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

.field public static final enum GROUP_INFO_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

.field public static final enum GROUP_INFO_OK:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

.field public static final enum GROUP_INFO_UPDATED:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

.field public static final enum NONE:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

.field public static final enum SHIELD_GROUP_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

.field public static final enum SHIELD_GROUP_OK:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

.field public static final enum SHIELD_GROUP_TIMEOUT:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->NONE:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    const-string v1, "GROUP_INFO_OK"

    invoke-direct {v0, v1, v4}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->GROUP_INFO_OK:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    const-string v1, "GROUP_INFO_UPDATED"

    invoke-direct {v0, v1, v5}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->GROUP_INFO_UPDATED:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    const-string v1, "GROUP_INFO_FAIL"

    invoke-direct {v0, v1, v6}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->GROUP_INFO_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    const-string v1, "CHANGE_GROUP_MEMBER_SUCCESS"

    invoke-direct {v0, v1, v7}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_MEMBER_SUCCESS:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    const-string v1, "CHANGE_GROUP_MEMBER_FAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_MEMBER_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    const-string v1, "CHANGE_GROUP_MEMBER_TIMEOUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_MEMBER_TIMEOUT:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    const-string v1, "CREATE_GROUP_OK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CREATE_GROUP_OK:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    const-string v1, "CREATE_GROUP_FAIL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CREATE_GROUP_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    const-string v1, "CREATE_GROUP_TIMEOUT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CREATE_GROUP_TIMEOUT:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    const-string v1, "SHIELD_GROUP_OK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->SHIELD_GROUP_OK:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    const-string v1, "SHIELD_GROUP_TIMEOUT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->SHIELD_GROUP_TIMEOUT:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    const-string v1, "SHIELD_GROUP_FAIL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->SHIELD_GROUP_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    const-string v1, "CHANGE_GROUP_INFO_SUCCESS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_INFO_SUCCESS:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    const-string v1, "CHANGE_GROUP_INFO_FAIL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_INFO_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    const-string v1, "CHANGE_GROUP_INFO_TIMEOUT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_INFO_TIMEOUT:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->NONE:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->GROUP_INFO_OK:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->GROUP_INFO_UPDATED:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->GROUP_INFO_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_MEMBER_SUCCESS:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_MEMBER_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_MEMBER_TIMEOUT:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CREATE_GROUP_OK:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CREATE_GROUP_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CREATE_GROUP_TIMEOUT:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->SHIELD_GROUP_OK:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->SHIELD_GROUP_TIMEOUT:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->SHIELD_GROUP_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_INFO_SUCCESS:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_INFO_FAIL:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->CHANGE_GROUP_INFO_TIMEOUT:Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->$VALUES:[Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/imservice/event/GroupEvent$Event;
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/imservice/event/GroupEvent$Event;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->$VALUES:[Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    invoke-virtual {v0}, [Lcom/ifengyu/im/imservice/event/GroupEvent$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/imservice/event/GroupEvent$Event;

    return-object v0
.end method
