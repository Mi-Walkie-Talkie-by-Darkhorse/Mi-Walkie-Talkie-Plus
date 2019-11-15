.class Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$1;
.super Ljava/lang/Object;
.source "SessionListFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/imui/ui/drop/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$1;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$1;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)Lcom/ifengyu/library/widget/recyclerview/e/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->setShouldDetectGesture(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$1;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->a(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)Lcom/ifengyu/library/widget/recyclerview/e/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/recyclerview/e/b;->setShouldDetectGesture(Z)V

    return-void
.end method
