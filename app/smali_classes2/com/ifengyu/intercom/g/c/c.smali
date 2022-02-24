.class public Lcom/ifengyu/intercom/g/c/c;
.super Lcom/ifengyu/intercom/g/c/b;
.source "PostFormBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/g/c/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/g/c/b<",
        "Lcom/ifengyu/intercom/g/c/c;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/g/c/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/g/c/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/g/c/c;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/g/c/c;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/g/c/b;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/g/c/b;->d:Ljava/util/Map;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/g/c/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ifengyu/intercom/g/c/c;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/g/c/c;->f:Ljava/util/List;

    new-instance v1, Lcom/ifengyu/intercom/g/c/c$a;

    invoke-direct {v1, p1, p2, p3}, Lcom/ifengyu/intercom/g/c/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Lcom/ifengyu/intercom/g/e/f;
    .locals 8

    .line 1
    new-instance v7, Lcom/ifengyu/intercom/g/e/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/g/c/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/g/c/b;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/ifengyu/intercom/g/c/b;->d:Ljava/util/Map;

    iget-object v4, p0, Lcom/ifengyu/intercom/g/c/b;->c:Ljava/util/Map;

    iget-object v5, p0, Lcom/ifengyu/intercom/g/c/c;->f:Ljava/util/List;

    iget v6, p0, Lcom/ifengyu/intercom/g/c/b;->e:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/g/e/d;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;I)V

    invoke-virtual {v7}, Lcom/ifengyu/intercom/g/e/c;->b()Lcom/ifengyu/intercom/g/e/f;

    move-result-object v0

    return-object v0
.end method
