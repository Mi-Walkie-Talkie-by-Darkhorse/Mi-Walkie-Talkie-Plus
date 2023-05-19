.class public final enum Lcom/shanlitech/et/notice/event/InvitationEvent$Type;
.super Ljava/lang/Enum;
.source "InvitationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/notice/event/InvitationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/notice/event/InvitationEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

.field public static final enum CONTACT_APPLICATION:Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

.field public static final enum CONTACT_INVITATION:Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

.field public static final enum GROUP_APPLICATION:Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

.field public static final enum GROUP_INVITATION:Lcom/shanlitech/et/notice/event/InvitationEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

    const-string v1, "CONTACT_APPLICATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shanlitech/et/notice/event/InvitationEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shanlitech/et/notice/event/InvitationEvent$Type;->CONTACT_APPLICATION:Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

    new-instance v1, Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

    const-string v3, "CONTACT_INVITATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shanlitech/et/notice/event/InvitationEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shanlitech/et/notice/event/InvitationEvent$Type;->CONTACT_INVITATION:Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

    new-instance v3, Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

    const-string v5, "GROUP_APPLICATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shanlitech/et/notice/event/InvitationEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shanlitech/et/notice/event/InvitationEvent$Type;->GROUP_APPLICATION:Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

    new-instance v5, Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

    const-string v7, "GROUP_INVITATION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shanlitech/et/notice/event/InvitationEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shanlitech/et/notice/event/InvitationEvent$Type;->GROUP_INVITATION:Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/shanlitech/et/notice/event/InvitationEvent$Type;->$VALUES:[Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/notice/event/InvitationEvent$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/notice/event/InvitationEvent$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/notice/event/InvitationEvent$Type;->$VALUES:[Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

    invoke-virtual {v0}, [Lcom/shanlitech/et/notice/event/InvitationEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/notice/event/InvitationEvent$Type;

    return-object v0
.end method
