.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/main/tab/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/d;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/d;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a(Landroid/view/View;)V

    return-void
.end method
