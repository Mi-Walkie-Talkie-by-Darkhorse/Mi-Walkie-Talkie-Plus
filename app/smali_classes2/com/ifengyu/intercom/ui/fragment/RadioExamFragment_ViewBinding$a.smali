.class Lcom/ifengyu/intercom/ui/fragment/RadioExamFragment_ViewBinding$a;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RadioExamFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/RadioExamFragment_ViewBinding;-><init>(Lcom/ifengyu/intercom/ui/fragment/RadioExamFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/RadioExamFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/RadioExamFragment_ViewBinding;Lcom/ifengyu/intercom/ui/fragment/RadioExamFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/RadioExamFragment_ViewBinding$a;->a:Lcom/ifengyu/intercom/ui/fragment/RadioExamFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/RadioExamFragment_ViewBinding$a;->a:Lcom/ifengyu/intercom/ui/fragment/RadioExamFragment;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/RadioExamFragment;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
