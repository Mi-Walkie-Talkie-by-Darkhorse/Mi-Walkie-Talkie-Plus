.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/tab/f0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;

.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:Lcom/ifengyu/talk/models/RecentTalkModel;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;[Ljava/lang/String;Lcom/ifengyu/talk/models/RecentTalkModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/f0;->a:Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/f0;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/fragment/tab/f0;->c:Lcom/ifengyu/talk/models/RecentTalkModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/f0;->a:Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/f0;->b:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/f0;->c:Lcom/ifengyu/talk/models/RecentTalkModel;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/tab/RecentTalkFragment;->w3([Ljava/lang/String;Lcom/ifengyu/talk/models/RecentTalkModel;Landroid/content/DialogInterface;I)V

    return-void
.end method
