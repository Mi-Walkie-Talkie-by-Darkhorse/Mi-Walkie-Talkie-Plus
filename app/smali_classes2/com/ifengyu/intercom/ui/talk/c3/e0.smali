.class public Lcom/ifengyu/intercom/ui/talk/c3/e0;
.super Lcom/ifengyu/intercom/ui/base/m;
.source "GroupDetailPresenter.java"

# interfaces
.implements Lcom/ifengyu/talk/h/c;
.implements Lcom/ifengyu/talk/h/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/m<",
        "Lcom/ifengyu/intercom/ui/talk/d3/c;",
        ">;",
        "Lcom/ifengyu/talk/h/c;",
        "Lcom/ifengyu/talk/h/f;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "e0"


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/shanlitech/et/model/Group;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shanlitech/et/model/Group;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/m;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->c:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    return-void
.end method

.method private B()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->i()Lcom/ifengyu/talk/f/e0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/talk/f/e0;->b(J)V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/database/TalkDatabase;->D()Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/database/TalkDatabase;->C()Lcom/ifengyu/talk/database/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/talk/database/a/a;->f(J)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ifengyu/talk/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ifengyu/library/utils/j;->c(Ljava/io/File;)V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/c;->n()V

    return-void
.end method

.method private synthetic I(Lcom/ifengyu/intercom/http/entity/UploadFileEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->e:Ljava/lang/String;

    const-string v1, "uploadGroupAvatarFile success"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/UploadFileEntity;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/model/Group;->changeGroupAvatar(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/c;->g()V

    :cond_0
    return-void
.end method

.method static synthetic v()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/ifengyu/intercom/ui/talk/c3/e0;)Lcom/ifengyu/intercom/ui/base/q;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public B0(Lcom/shanlitech/et/notice/event/ResultEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/ResultEvent;->getType()Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->NAME_INGROUP:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/ResultEvent;->success()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/c;->x0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/c;->v()V

    :cond_1
    :goto_0
    return-void
.end method

.method public C(Lcom/shanlitech/et/model/MemberList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/MemberList;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/c3/e0;->Q()V

    :cond_0
    return-void
.end method

.method public D(Lcom/shanlitech/et/notice/event/GroupEvent;)V
    .locals 0

    return-void
.end method

.method public G(Lcom/shanlitech/et/model/GroupList;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/GroupList;->getCurrentGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getType()I

    move-result v0

    sget v1, Lcom/shanlitech/et/model/Group;->GROUP_NORMAL:I

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    invoke-static {v0, p1}, Lcom/ifengyu/talk/d;->s(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/ui/talk/d3/c;->c(Lcom/shanlitech/et/model/Group;)V

    :cond_0
    return-void
.end method

.method public H0(Lcom/shanlitech/et/notice/event/RequestResultEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequest()Lcom/shanlitech/et/ETStatusCode$Request;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$Request;->C:Lcom/shanlitech/et/ETStatusCode$Request;

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequestResultCode()Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    move-result-object p1

    sget-object v0, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->b:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/c;->i()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/c;->h()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequest()Lcom/shanlitech/et/ETStatusCode$Request;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$Request;->g0:Lcom/shanlitech/et/ETStatusCode$Request;

    if-ne v0, v1, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequestResultCode()Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    move-result-object p1

    sget-object v0, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->b:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    if-ne p1, v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/c;->j()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/c;->g()V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequest()Lcom/shanlitech/et/ETStatusCode$Request;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$Request;->h:Lcom/shanlitech/et/ETStatusCode$Request;

    if-ne v0, v1, :cond_5

    .line 10
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequestResultCode()Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    move-result-object p1

    sget-object v0, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->b:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    if-ne p1, v0, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/c3/e0;->B()V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/c;->e()V

    :cond_5
    :goto_0
    return-void
.end method

.method public synthetic J(Lcom/ifengyu/intercom/http/entity/UploadFileEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/e0;->I(Lcom/ifengyu/intercom/http/entity/UploadFileEntity;)V

    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/model/Group;->modifyName(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/c;->h()V

    :cond_0
    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/model/Group;->modifyMyName(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/c;->v()V

    :cond_0
    return-void
.end method

.method public O()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->quite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/c;->e()V

    :cond_0
    return-void
.end method

.method public Q()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/MemberList;->getAllMembers()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/ifengyu/talk/e/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getCreator()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/ifengyu/talk/e/a;-><init>(J)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    invoke-static {v1}, Lcom/ifengyu/talk/d;->m(Lcom/shanlitech/et/model/Group;)Z

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

    check-cast v4, Lcom/shanlitech/et/model/Member;

    .line 7
    new-instance v5, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;

    const/16 v6, 0x3e9

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    .line 8
    invoke-virtual {v4}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/ifengyu/talk/d;->o(Lcom/shanlitech/et/model/Group;J)Z

    move-result v7

    invoke-direct {v5, v6, v7, v4}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;-><init>(IZLcom/shanlitech/et/model/Member;)V

    .line 9
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;

    const/16 v3, 0x3ea

    invoke-direct {v2, v3}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;

    const/16 v2, 0x3eb

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/c;->O()V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/MemberList;->me()Lcom/shanlitech/et/model/Member;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    invoke-static {v0}, Lcom/ifengyu/talk/d;->h(Lcom/shanlitech/et/model/Member;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/ui/talk/d3/c;->F0(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public R(Ljava/io/File;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "image/png"

    .line 1
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "file"

    invoke-static {v1, p1, v0}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/n/a;->q(Lokhttp3/MultipartBody$Part;)Lio/reactivex/Observable;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c3/i;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/talk/c3/i;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/e0;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/c3/e0$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/c3/e0$a;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/e0;)V

    .line 6
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public V0(Lcom/shanlitech/et/notice/event/GroupEvent;)V
    .locals 0

    return-void
.end method

.method public W0(Lcom/shanlitech/et/notice/event/TransferGroupEvent;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/f/c0;->d()Lcom/shanlitech/et/model/GroupList;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/shanlitech/et/model/GroupList;->getGroup(J)Lcom/shanlitech/et/model/Group;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getCreator()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getCreator()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/c;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    invoke-interface {p1, v0}, Lcom/ifengyu/intercom/ui/talk/d3/c;->c(Lcom/shanlitech/et/model/Group;)V

    :cond_0
    return-void
.end method

.method public m0(Lcom/shanlitech/et/notice/event/InviteGroupAckEvent;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic n(Lcom/ifengyu/intercom/ui/base/q;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/e0;->y(Lcom/ifengyu/intercom/ui/talk/d3/c;)V

    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/m;->q()V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/c0;->removeListener(Lcom/ifengyu/talk/h/c;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->j()Lcom/ifengyu/talk/f/f0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/f0;->removeListener(Lcom/ifengyu/talk/h/f;)V

    return-void
.end method

.method public x(Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;)V
    .locals 0

    return-void
.end method

.method public y(Lcom/ifengyu/intercom/ui/talk/d3/c;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/m;->n(Lcom/ifengyu/intercom/ui/base/q;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/talk/f/c0;->addListener(Lcom/ifengyu/talk/h/c;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->j()Lcom/ifengyu/talk/f/f0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/talk/f/f0;->addListener(Lcom/ifengyu/talk/h/f;)V

    return-void
.end method

.method public z(Lcom/shanlitech/et/notice/event/GroupEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getTargetGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/c;->J0()V

    :cond_0
    return-void
.end method
