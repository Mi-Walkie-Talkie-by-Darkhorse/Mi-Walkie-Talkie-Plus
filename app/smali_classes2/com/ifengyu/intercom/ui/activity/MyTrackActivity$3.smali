.class Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$3;
.super Ljava/lang/Object;
.source "MyTrackActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->e()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    const-class v3, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "trackInfoPrimaryKeyId"

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->a()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->v()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "track_info_for_what"

    const-string v2, "for_preview_track"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v0, "track_info_for_what"

    const-string v2, "for_look_saved_track"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
