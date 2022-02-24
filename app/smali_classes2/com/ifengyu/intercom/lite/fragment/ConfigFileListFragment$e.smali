.class Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;
.super Lcom/ifengyu/intercom/lite/base/recycler/c;
.source "ConfigFileListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/lite/base/recycler/c<",
        "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
        ">;"
    }
.end annotation


# instance fields
.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ConfigFileModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/lite/base/recycler/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;->k:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/lite/base/recycler/d;ILcom/ifengyu/intercom/lite/models/ConfigFileModel;Z)V
    .locals 4

    .line 4
    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getName()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f090499

    invoke-virtual {p1, v0, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(ILjava/lang/CharSequence;)Lcom/ifengyu/intercom/lite/base/recycler/d;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getFrom()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const v0, 0x7f110181

    invoke-static {v0, p2}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f090467

    invoke-virtual {p1, v0, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(ILjava/lang/CharSequence;)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 6
    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getCreateTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/lite/utils/k;->a(J)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getCreateTime()J

    move-result-wide p2

    const-string v0, "HH:mm"

    invoke-static {p2, p3, v0}, Lcom/ifengyu/intercom/lite/utils/k;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->getCreateTime()J

    move-result-wide p2

    const-string v0, "yyyy-MM-dd HH:mm"

    invoke-static {p2, p3, v0}, Lcom/ifengyu/intercom/lite/utils/k;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const p3, 0x7f09049f

    .line 9
    invoke-virtual {p1, p3, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(ILjava/lang/CharSequence;)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;->h()Z

    move-result p2

    const v0, 0x7f090209

    if-eqz p2, :cond_2

    if-eqz p4, :cond_1

    const p2, 0x7f0e0008

    .line 11
    invoke-virtual {p1, v0, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    goto :goto_1

    :cond_1
    const p2, 0x7f0e0009

    .line 12
    invoke-virtual {p1, v0, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    :goto_1
    const/16 p2, 0x8

    .line 13
    invoke-virtual {p1, p3, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    goto :goto_2

    :cond_2
    const p2, 0x7f0e0006

    .line 14
    invoke-virtual {p1, v0, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 15
    invoke-virtual {p1, p3, v1}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    :goto_2
    return-void
.end method

.method public bridge synthetic a(Lcom/ifengyu/intercom/lite/base/recycler/d;ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    check-cast p3, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;->a(Lcom/ifengyu/intercom/lite/base/recycler/d;ILcom/ifengyu/intercom/lite/models/ConfigFileModel;Z)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;->k:Z

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/recycler/c;->a()V

    return-void
.end method

.method public b(I)I
    .locals 0

    const p1, 0x7f0c00b2

    return p1
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment$e;->k:Z

    return v0
.end method
