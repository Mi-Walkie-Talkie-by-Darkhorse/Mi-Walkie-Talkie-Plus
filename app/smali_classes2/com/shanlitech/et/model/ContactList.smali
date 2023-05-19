.class public Lcom/shanlitech/et/model/ContactList;
.super Ljava/util/ArrayList;
.source "ContactList.java"

# interfaces
.implements Lcom/shanlitech/et/core/sl/model/list/IContactList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/shanlitech/et/model/User;",
        ">;",
        "Lcom/shanlitech/et/core/sl/model/list/IContactList;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shanlitech/et/model/User;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lcom/shanlitech/et/model/User;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    array-length v0, p1

    if-lez v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static isContact(Lcom/shanlitech/et/model/User;)Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/g;->k(Lcom/shanlitech/et/model/User;)Z

    move-result p0

    return p0
.end method

.method public static isContact(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/g;->l(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static queryUserByAccount(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/g;->x(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public varargs addContacts(Ljava/lang/String;[Lcom/shanlitech/et/model/User;)Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/c/g;->a(Ljava/lang/String;[Lcom/shanlitech/et/model/User;)Z

    move-result p1

    return p1
.end method

.method public varargs addContacts(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/core/c/g;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public varargs delContacts([Lcom/shanlitech/et/model/User;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shanlitech/et/core/c/g;->v([Lcom/shanlitech/et/model/User;)Z

    move-result p1

    return p1
.end method

.method public getAccount()Lcom/shanlitech/et/model/Account;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const-class v1, Lcom/shanlitech/et/model/ContactList;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " size="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
