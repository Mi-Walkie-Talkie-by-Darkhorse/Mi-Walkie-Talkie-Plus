.class Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$4$1;
.super Ljava/lang/Object;
.source "MyTrackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$4;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$4;I)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$4$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$4;

    iput p2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$4$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$4$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$4;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$4$1;->a:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)V

    return-void
.end method
