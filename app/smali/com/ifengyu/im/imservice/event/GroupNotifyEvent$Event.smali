.class public final enum Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;
.super Ljava/lang/Enum;
.source "GroupNotifyEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/event/GroupNotifyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

.field public static final enum AGREE_APPLY_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

.field public static final enum AGREE_INVITE_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

.field public static final enum APPLY_JOIN_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

.field public static final enum INVITED_JOIN_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

.field public static final enum REJECT_APPLY_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

.field public static final enum REJECT_INVITE_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    const-string v1, "INVITED_JOIN_NOTIFY"

    invoke-direct {v0, v1, v3}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->INVITED_JOIN_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    const-string v1, "APPLY_JOIN_NOTIFY"

    invoke-direct {v0, v1, v4}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->APPLY_JOIN_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    const-string v1, "AGREE_APPLY_NOTIFY"

    invoke-direct {v0, v1, v5}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->AGREE_APPLY_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    const-string v1, "REJECT_APPLY_NOTIFY"

    invoke-direct {v0, v1, v6}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->REJECT_APPLY_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    const-string v1, "AGREE_INVITE_NOTIFY"

    invoke-direct {v0, v1, v7}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->AGREE_INVITE_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    const-string v1, "REJECT_INVITE_NOTIFY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->REJECT_INVITE_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->INVITED_JOIN_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->APPLY_JOIN_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->AGREE_APPLY_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->REJECT_APPLY_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->AGREE_INVITE_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->REJECT_INVITE_NOTIFY:Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->$VALUES:[Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->$VALUES:[Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    invoke-virtual {v0}, [Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/imservice/event/GroupNotifyEvent$Event;

    return-object v0
.end method
