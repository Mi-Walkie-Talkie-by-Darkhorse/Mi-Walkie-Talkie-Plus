.class Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SessionListFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

.field final synthetic b:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding$3;->b:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding$3;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding$3;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->onClick(Landroid/view/View;)V

    return-void
.end method
