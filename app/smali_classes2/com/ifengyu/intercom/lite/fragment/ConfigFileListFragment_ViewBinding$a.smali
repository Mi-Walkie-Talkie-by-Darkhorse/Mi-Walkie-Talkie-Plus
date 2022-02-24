.class Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding$a;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ConfigFileListFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding$a;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding$a;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->onClick(Landroid/view/View;)V

    return-void
.end method
