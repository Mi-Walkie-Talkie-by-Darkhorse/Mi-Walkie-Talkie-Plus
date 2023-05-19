.class public Lcom/shanlitech/et/core/c/g;
.super Ljava/lang/Object;
.source "ContactManager.java"


# static fields
.field private static final a:Ljava/lang/String; = "g"

.field private static b:Lcom/shanlitech/et/core/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j()Lcom/shanlitech/et/core/c/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/g;->b:Lcom/shanlitech/et/core/c/g;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/shanlitech/et/core/c/g;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/shanlitech/et/core/c/g;->b:Lcom/shanlitech/et/core/c/g;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/shanlitech/et/core/c/g;

    invoke-direct {v1}, Lcom/shanlitech/et/core/c/g;-><init>()V

    sput-object v1, Lcom/shanlitech/et/core/c/g;->b:Lcom/shanlitech/et/core/c/g;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/shanlitech/et/core/c/g;->b:Lcom/shanlitech/et/core/c/g;

    return-object v0
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Lcom/shanlitech/et/model/User;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/shanlitech/et/c/h;->d([Lcom/shanlitech/et/model/User;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/shanlitech/et/core/c/g;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/g;->a:Ljava/lang/String;

    const-string p2, "addContact: break by <users> is null..."

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-static {p2, p1}, Lcom/shanlitech/et/CoreEngine;->makeContacts([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/shanlitech/et/ETStatusCode;->b:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    sget-object v2, Lcom/shanlitech/et/core/c/g;->a:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v0

    aput-object p1, v4, v3

    const/4 p1, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v4, p1

    const-string p1, "addContact: size=[%s] msg=[%s] result=[%s]"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public varargs c([Lcom/shanlitech/et/model/ContactInvitation;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/shanlitech/et/c/h;->a([Lcom/shanlitech/et/model/ContactInvitation;)[J

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shanlitech/et/core/c/g;->d([J)Z

    move-result p1

    return p1
.end method

.method public varargs d([J)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/g;->a:Ljava/lang/String;

    const-string v1, "deleteContactInvition: break by <invitations> is null..."

    invoke-static {p1, v1}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/shanlitech/et/CoreEngine;->deleteContactInvition([J)I

    move-result v1

    sget v2, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 3
    :cond_1
    sget-object v1, Lcom/shanlitech/et/core/c/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteContactInvition: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/model/User;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/core/sl/model/IContactApplication;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/core/sl/model/IContactInvitation;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->k()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/shanlitech/et/model/ContactList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->l()Lcom/shanlitech/et/model/ContactList;

    move-result-object v0

    return-object v0
.end method

.method public i(Lcom/shanlitech/et/model/User;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/e;->A(Lcom/shanlitech/et/model/User;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Lcom/shanlitech/et/model/User;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/g;->a:Ljava/lang/String;

    const-string v0, "isContact: break by <user> is null..."

    invoke-static {p1, v0}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/e;->D(Lcom/shanlitech/et/model/User;)Z

    move-result p1

    return p1
.end method

.method public l(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/e;->E(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public m()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/g;->t()Z

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/g;->u()Z

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/shanlitech/et/core/c/g;->s(J)Z

    .line 4
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->queryUsers()I

    return-void
.end method

.method public n([Lcom/shanlitech/et/model/ContactInvitation;[J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/c/e;->I([Lcom/shanlitech/et/model/ContactInvitation;[J)Z

    return-void
.end method

.method public o([Lcom/shanlitech/et/model/User;[J)V
    .locals 5

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/g;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "null"

    if-eqz p1, :cond_0

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    aput-object v2, v1, v3

    const-string v2, "onNotifyContactChanged: changed.size=[%s] removed.size=[%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/shanlitech/et/core/c/e;->T([Lcom/shanlitech/et/model/User;[J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shanlitech/et/core/c/e;->l()Lcom/shanlitech/et/model/ContactList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string p1, "onNotifyContactChanged: "

    .line 4
    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/core/c/e;->l()Lcom/shanlitech/et/model/ContactList;

    move-result-object p1

    const-string p2, "log.contactlist"

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/h;->f(Lcom/shanlitech/et/model/ContactList;Ljava/lang/String;)V

    return-void
.end method

.method public p(Lcom/shanlitech/et/model/User;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/SearchResultEvent;

    invoke-direct {v1, p1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;-><init>(Lcom/shanlitech/et/model/User;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/shanlitech/et/notice/event/SearchResultEvent;

    const-string v1, "\u6ca1\u6709\u641c\u7d22\u5230\u7528\u6237"

    invoke-direct {v0, v1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public q(I[J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/c/e;->P(I[J)V

    return-void
.end method

.method public varargs r([Lcom/shanlitech/et/model/Notes;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/e;->R([Lcom/shanlitech/et/model/Notes;)V

    return-void
.end method

.method public s(J)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/shanlitech/et/CoreEngine;->queryContactInvition(J)I

    move-result p1

    sget p2, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public t()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->queryContacts()I

    move-result v0

    sget v1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->queryUserNotes()I

    move-result v0

    sget v1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public varargs v([Lcom/shanlitech/et/model/User;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/shanlitech/et/c/h;->d([Lcom/shanlitech/et/model/User;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/shanlitech/et/core/c/g;->a:Ljava/lang/String;

    const-string v0, "removeContact: break by <users> is null..."

    invoke-static {p1, v0}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/shanlitech/et/CoreEngine;->removeContacts([Ljava/lang/String;)I

    move-result v0

    sget v2, Lcom/shanlitech/et/ETStatusCode;->b:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    sget-object v2, Lcom/shanlitech/et/core/c/g;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "removeContact: size=[%s] result=[%s]"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public w(Lcom/shanlitech/et/model/ContactInvitation;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/g;->a:Ljava/lang/String;

    const-string p2, "responseContact: break by <invitation> is null"

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    iget-wide v1, p1, Lcom/shanlitech/et/model/ContactInvitation;->invite_id:J

    invoke-static {v1, v2, p2}, Lcom/shanlitech/et/CoreEngine;->responseContact(JZ)I

    move-result p2

    sget v1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p2, v1, :cond_1

    const/4 v0, 0x1

    .line 3
    :cond_1
    sget-object p2, Lcom/shanlitech/et/core/c/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseContact: invitation=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] result="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public x(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/shanlitech/et/core/c/g;->a:Ljava/lang/String;

    const-string v0, "searchAccount: break by <account> is null"

    invoke-static {p1, v0}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/shanlitech/et/CoreEngine;->searchAccount(Ljava/lang/String;)I

    move-result p1

    sget v0, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, v0, :cond_1

    const/4 v1, 0x1

    .line 4
    :cond_1
    sget-object p1, Lcom/shanlitech/et/core/c/g;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchAccount: result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public y(Lcom/shanlitech/et/model/User;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shanlitech/et/core/c/g;->a:Ljava/lang/String;

    const-string p2, "setUserNotes: break by <user> is null..."

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/notice/event/ResultEvent;

    sget-object v1, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->CONTACT_REMARK:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-direct {p2, v1, v0}, Lcom/shanlitech/et/notice/event/ResultEvent;-><init>(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Z)V

    const-string v1, "<user> is null..."

    invoke-virtual {p2, v1}, Lcom/shanlitech/et/notice/event/ResultEvent;->setMsg(Ljava/lang/String;)Lcom/shanlitech/et/notice/event/ResultEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Lcom/shanlitech/et/model/User;

    aput-object p1, v2, v0

    .line 3
    invoke-static {v2}, Lcom/shanlitech/et/c/h;->e([Lcom/shanlitech/et/model/User;)[J

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/shanlitech/et/core/c/e;->d(Lcom/shanlitech/et/model/User;Ljava/lang/String;)V

    new-array v3, v1, [Ljava/lang/String;

    aput-object p2, v3, v0

    .line 5
    invoke-static {v2, v3}, Lcom/shanlitech/et/CoreEngine;->setUserNotes([J[Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    :goto_0
    sget-object v3, Lcom/shanlitech/et/core/c/g;->a:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p1}, Lcom/shanlitech/et/model/User;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x2

    aput-object p2, v4, v0

    const/4 v0, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v0, "setUserNotes:user.id=%s user.name[%s]->[%s] result=[%s]"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 7
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, p2}, Lcom/shanlitech/et/core/c/e;->c0(JLjava/lang/String;)V

    .line 8
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/notice/event/ResultEvent;

    sget-object v0, Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;->CONTACT_REMARK:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-direct {p2, v0, v2}, Lcom/shanlitech/et/notice/event/ResultEvent;-><init>(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return v2
.end method

.method public varargs z([Lcom/shanlitech/et/model/User;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/e;->b0([Lcom/shanlitech/et/model/User;)V

    return-void
.end method
