.class Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$c;
.super Lbutterknife/internal/DebouncingOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;-><init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;)V
    .locals 0

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$c;->a:Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$c;->a:Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
