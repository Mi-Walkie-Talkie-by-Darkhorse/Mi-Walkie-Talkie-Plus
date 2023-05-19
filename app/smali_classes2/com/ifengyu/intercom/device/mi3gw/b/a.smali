.class public Lcom/ifengyu/intercom/device/mi3gw/b/a;
.super Lcom/ifengyu/intercom/ui/base/m;
.source "DeviceGroupDetailPresenter.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/mi3gw/c/e0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/m<",
        "Lcom/ifengyu/intercom/device/mi3gw/d/a;",
        ">;",
        "Lcom/ifengyu/intercom/device/mi3gw/c/e0;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/m;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/b/a;->c:Ljava/util/ArrayList;

    .line 3
    iput-wide p1, p0, Lcom/ifengyu/intercom/device/mi3gw/b/a;->d:J

    return-void
.end method

.method private y(Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getUserList()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/ifengyu/talk/e/b;

    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ifengyu/talk/e/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->o()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/ifengyu/talk/d;->n(Lcom/ifengyu/talk/http/entity/TempGroup;J)Z

    move-result v1

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/16 v3, 0x9

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/talk/http/entity/TempMember;

    .line 7
    new-instance v5, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;

    const/16 v6, 0x3e9

    invoke-direct {v5, v6, v4}, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;-><init>(ILcom/ifengyu/talk/http/entity/TempMember;)V

    .line 8
    iget-object v4, p0, Lcom/ifengyu/intercom/device/mi3gw/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/b/a;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;

    const/16 v3, 0x3ea

    invoke-direct {v2, v3}, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/b/a;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;

    const/16 v2, 0x3eb

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/d/a;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/device/mi3gw/d/a;->e0(Lcom/ifengyu/talk/http/entity/TempGroup;)V

    return-void
.end method


# virtual methods
.method public D0(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/b/a;->d:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/mi3gw/d/a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/device/mi3gw/d/a;->h()V

    :cond_0
    return-void
.end method

.method public E(JLjava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/b/a;->d:J

    cmp-long p3, v0, p1

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/mi3gw/d/a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/device/mi3gw/d/a;->i()V

    :cond_0
    return-void
.end method

.method public varargs F([J)V
    .locals 0

    return-void
.end method

.method public G0()V
    .locals 0

    return-void
.end method

.method public H(Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ifengyu/intercom/device/mi3gw/b/a;->d:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/b/a;->y(Lcom/ifengyu/talk/http/entity/TempGroup;)V

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/TempGroup;->getUserList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/http/entity/TempMember;

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/TempMember;->getUserId()J

    move-result-wide v1

    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->o()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/TempMember;->getNicknameIn()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/TempMember;->getNicknameIn()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/TempMember;->getNickname()Ljava/lang/String;

    move-result-object p1

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3gw/d/a;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/device/mi3gw/d/a;->o1(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public L(Lcom/ifengyu/intercom/models/NetDeviceModel;)V
    .locals 0

    return-void
.end method

.method public L0()V
    .locals 0

    return-void
.end method

.method public M0(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public O0()V
    .locals 0

    return-void
.end method

.method public P(J)V
    .locals 0

    return-void
.end method

.method public R0(J)V
    .locals 0

    return-void
.end method

.method public S()V
    .locals 0

    return-void
.end method

.method public X0(J)V
    .locals 0

    return-void
.end method

.method public Y(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/b/a;->d:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/mi3gw/d/a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/device/mi3gw/d/a;->q1()V

    :cond_0
    return-void
.end method

.method public a1(J)V
    .locals 0

    return-void
.end method

.method public d0(Lcom/ifengyu/talk/http/entity/TempGroup;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public varargs h1([J)V
    .locals 0

    return-void
.end method

.method public i0(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/b/a;->d:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/mi3gw/d/a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/device/mi3gw/d/a;->g()V

    :cond_0
    return-void
.end method

.method public varargs k0([J)V
    .locals 7

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v2, p1, v1

    .line 2
    iget-wide v4, p0, Lcom/ifengyu/intercom/device/mi3gw/b/a;->d:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/mi3gw/d/a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/device/mi3gw/d/a;->n()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public k1()V
    .locals 0

    return-void
.end method

.method public l0(J)V
    .locals 0

    return-void
.end method

.method public bridge synthetic n(Lcom/ifengyu/intercom/ui/base/q;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/device/mi3gw/d/a;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/b/a;->v(Lcom/ifengyu/intercom/device/mi3gw/d/a;)V

    return-void
.end method

.method public o0()V
    .locals 0

    return-void
.end method

.method public p(JLjava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/b/a;->d:J

    cmp-long p3, v0, p1

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/mi3gw/d/a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/device/mi3gw/d/a;->S0()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/m;->q()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->removeListener(Lcom/ifengyu/intercom/device/mi3gw/c/e0;)V

    return-void
.end method

.method public r(J)V
    .locals 0

    return-void
.end method

.method public varargs t0([J)V
    .locals 7

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v2, p1, v1

    .line 2
    iget-wide v4, p0, Lcom/ifengyu/intercom/device/mi3gw/b/a;->d:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/mi3gw/d/a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/device/mi3gw/d/a;->e()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public t1(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/device/mi3gw/b/a;->d:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/mi3gw/d/a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/device/mi3gw/d/a;->j()V

    :cond_0
    return-void
.end method

.method public v(Lcom/ifengyu/intercom/device/mi3gw/d/a;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/m;->n(Lcom/ifengyu/intercom/ui/base/q;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->addListener(Lcom/ifengyu/intercom/device/mi3gw/c/e0;)V

    return-void
.end method

.method public w()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/b/a;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public w0()V
    .locals 0

    return-void
.end method
