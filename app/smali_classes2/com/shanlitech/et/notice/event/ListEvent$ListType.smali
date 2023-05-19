.class public final enum Lcom/shanlitech/et/notice/event/ListEvent$ListType;
.super Ljava/lang/Enum;
.source "ListEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/notice/event/ListEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/notice/event/ListEvent$ListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shanlitech/et/notice/event/ListEvent$ListType;

.field public static final enum CONTACT:Lcom/shanlitech/et/notice/event/ListEvent$ListType;

.field public static final enum CONTACT_INVITE:Lcom/shanlitech/et/notice/event/ListEvent$ListType;

.field public static final enum GROUP:Lcom/shanlitech/et/notice/event/ListEvent$ListType;

.field public static final enum GROUP_INVITE:Lcom/shanlitech/et/notice/event/ListEvent$ListType;

.field public static final enum MEMBER:Lcom/shanlitech/et/notice/event/ListEvent$ListType;

.field public static final enum USER:Lcom/shanlitech/et/notice/event/ListEvent$ListType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    const-string v1, "GROUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shanlitech/et/notice/event/ListEvent$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shanlitech/et/notice/event/ListEvent$ListType;->GROUP:Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    new-instance v1, Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    const-string v3, "MEMBER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shanlitech/et/notice/event/ListEvent$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shanlitech/et/notice/event/ListEvent$ListType;->MEMBER:Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    new-instance v3, Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    const-string v5, "USER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shanlitech/et/notice/event/ListEvent$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shanlitech/et/notice/event/ListEvent$ListType;->USER:Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    new-instance v5, Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    const-string v7, "CONTACT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shanlitech/et/notice/event/ListEvent$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shanlitech/et/notice/event/ListEvent$ListType;->CONTACT:Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    new-instance v7, Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    const-string v9, "CONTACT_INVITE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/shanlitech/et/notice/event/ListEvent$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/shanlitech/et/notice/event/ListEvent$ListType;->CONTACT_INVITE:Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    new-instance v9, Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    const-string v11, "GROUP_INVITE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/shanlitech/et/notice/event/ListEvent$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/shanlitech/et/notice/event/ListEvent$ListType;->GROUP_INVITE:Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 2
    sput-object v11, Lcom/shanlitech/et/notice/event/ListEvent$ListType;->$VALUES:[Lcom/shanlitech/et/notice/event/ListEvent$ListType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/notice/event/ListEvent$ListType;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/notice/event/ListEvent$ListType;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/notice/event/ListEvent$ListType;->$VALUES:[Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    invoke-virtual {v0}, [Lcom/shanlitech/et/notice/event/ListEvent$ListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/notice/event/ListEvent$ListType;

    return-object v0
.end method
