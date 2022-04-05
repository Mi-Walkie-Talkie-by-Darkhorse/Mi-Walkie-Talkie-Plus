.class Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d;->a:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-direct {p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const p2, 0x7f1100f8

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const p4, 0x7f110093

    const/4 p5, 0x0

    invoke-virtual {p1, p4, p5}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    new-instance p4, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d$a;

    invoke-direct {p4, p0, p3}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d$a;-><init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$d;I)V

    const p3, 0x7f1100a0

    invoke-virtual {p1, p3, p4}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V

    return p2
.end method
