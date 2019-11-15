.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;
.super Ljava/lang/Object;
.source "Container.java"


# instance fields
.field public final activity:Landroid/app/Activity;

.field public final proxy:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/ModuleProxy;

.field public final sessionId:Ljava/lang/String;

.field public final sessionType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILcom/ifengyu/intercom/ui/imui/ui/chat/session/list/ModuleProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;->sessionId:Ljava/lang/String;

    iput p3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;->sessionType:I

    iput-object p4, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;->proxy:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/ModuleProxy;

    return-void
.end method
