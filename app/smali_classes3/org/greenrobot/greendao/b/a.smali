.class public final Lorg/greenrobot/greendao/b/a;
.super Ljava/lang/Object;
.source "DaoConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Lorg/greenrobot/greendao/a/a;

.field public final b:Ljava/lang/String;

.field public final c:[Lorg/greenrobot/greendao/f;

.field public final d:[Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field public final f:[Ljava/lang/String;

.field public final g:Lorg/greenrobot/greendao/f;

.field public final h:Z

.field public final i:Lorg/greenrobot/greendao/b/e;

.field private j:Lorg/greenrobot/greendao/identityscope/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/identityscope/a",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/a/a;Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/a/a;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/a",
            "<**>;>;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/b/a;->a:Lorg/greenrobot/greendao/a/a;

    :try_start_0
    const-string v0, "TABLENAME"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/b/a;->b:Ljava/lang/String;

    invoke-static {p2}, Lorg/greenrobot/greendao/b/a;->a(Ljava/lang/Class;)[Lorg/greenrobot/greendao/f;

    move-result-object v6

    iput-object v6, p0, Lorg/greenrobot/greendao/b/a;->c:[Lorg/greenrobot/greendao/f;

    array-length v0, v6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/b/a;->d:[Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    move-object v1, v4

    :goto_0
    array-length v0, v6

    if-ge v5, v0, :cond_1

    aget-object v0, v6, v5

    iget-object v9, v0, Lorg/greenrobot/greendao/f;->e:Ljava/lang/String;

    iget-object v10, p0, Lorg/greenrobot/greendao/b/a;->d:[Ljava/lang/String;

    aput-object v9, v10, v5

    iget-boolean v10, v0, Lorg/greenrobot/greendao/f;->d:Z

    if-eqz v10, :cond_0

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/b/a;->f:[Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/b/a;->e:[Ljava/lang/String;

    iget-object v0, p0, Lorg/greenrobot/greendao/b/a;->e:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v3, :cond_3

    :goto_2
    iput-object v1, p0, Lorg/greenrobot/greendao/b/a;->g:Lorg/greenrobot/greendao/f;

    new-instance v0, Lorg/greenrobot/greendao/b/e;

    iget-object v1, p0, Lorg/greenrobot/greendao/b/a;->b:Ljava/lang/String;

    iget-object v4, p0, Lorg/greenrobot/greendao/b/a;->d:[Ljava/lang/String;

    iget-object v5, p0, Lorg/greenrobot/greendao/b/a;->e:[Ljava/lang/String;

    invoke-direct {v0, p1, v1, v4, v5}, Lorg/greenrobot/greendao/b/e;-><init>(Lorg/greenrobot/greendao/a/a;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/greenrobot/greendao/b/a;->i:Lorg/greenrobot/greendao/b/e;

    iget-object v0, p0, Lorg/greenrobot/greendao/b/a;->g:Lorg/greenrobot/greendao/f;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/greenrobot/greendao/b/a;->g:Lorg/greenrobot/greendao/f;

    iget-object v0, v0, Lorg/greenrobot/greendao/f;->b:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Ljava/lang/Short;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lorg/greenrobot/greendao/b/a;->h:Z

    :goto_4
    return-void

    :cond_3
    move-object v1, v4

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/greenrobot/greendao/b/a;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    const-string v2, "Could not init DAOConfig"

    invoke-direct {v1, v2, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/greenrobot/greendao/b/a;->a:Lorg/greenrobot/greendao/a/a;

    iput-object v0, p0, Lorg/greenrobot/greendao/b/a;->a:Lorg/greenrobot/greendao/a/a;

    iget-object v0, p1, Lorg/greenrobot/greendao/b/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/b/a;->b:Ljava/lang/String;

    iget-object v0, p1, Lorg/greenrobot/greendao/b/a;->c:[Lorg/greenrobot/greendao/f;

    iput-object v0, p0, Lorg/greenrobot/greendao/b/a;->c:[Lorg/greenrobot/greendao/f;

    iget-object v0, p1, Lorg/greenrobot/greendao/b/a;->d:[Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/b/a;->d:[Ljava/lang/String;

    iget-object v0, p1, Lorg/greenrobot/greendao/b/a;->e:[Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/b/a;->e:[Ljava/lang/String;

    iget-object v0, p1, Lorg/greenrobot/greendao/b/a;->f:[Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/b/a;->f:[Ljava/lang/String;

    iget-object v0, p1, Lorg/greenrobot/greendao/b/a;->g:Lorg/greenrobot/greendao/f;

    iput-object v0, p0, Lorg/greenrobot/greendao/b/a;->g:Lorg/greenrobot/greendao/f;

    iget-object v0, p1, Lorg/greenrobot/greendao/b/a;->i:Lorg/greenrobot/greendao/b/e;

    iput-object v0, p0, Lorg/greenrobot/greendao/b/a;->i:Lorg/greenrobot/greendao/b/e;

    iget-boolean v0, p1, Lorg/greenrobot/greendao/b/a;->h:Z

    iput-boolean v0, p0, Lorg/greenrobot/greendao/b/a;->h:Z

    return-void
.end method

.method private static a(Ljava/lang/Class;)[Lorg/greenrobot/greendao/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/a",
            "<**>;>;)[",
            "Lorg/greenrobot/greendao/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$Properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x9

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lorg/greenrobot/greendao/f;

    if-eqz v5, :cond_0

    check-cast v0, Lorg/greenrobot/greendao/f;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lorg/greenrobot/greendao/f;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/f;

    iget v3, v0, Lorg/greenrobot/greendao/f;->a:I

    aget-object v3, v1, v3

    if-eqz v3, :cond_2

    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Duplicate property ordinals"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v3, v0, Lorg/greenrobot/greendao/f;->a:I

    aput-object v0, v1, v3

    goto :goto_1

    :cond_3
    return-object v1
.end method


# virtual methods
.method public a()Lorg/greenrobot/greendao/b/a;
    .locals 1

    new-instance v0, Lorg/greenrobot/greendao/b/a;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/b/a;-><init>(Lorg/greenrobot/greendao/b/a;)V

    return-object v0
.end method

.method public a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V
    .locals 3

    sget-object v0, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->b:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/greenrobot/greendao/b/a;->j:Lorg/greenrobot/greendao/identityscope/a;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->a:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lorg/greenrobot/greendao/b/a;->h:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/greenrobot/greendao/identityscope/b;

    invoke-direct {v0}, Lorg/greenrobot/greendao/identityscope/b;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/b/a;->j:Lorg/greenrobot/greendao/identityscope/a;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/greenrobot/greendao/identityscope/c;

    invoke-direct {v0}, Lorg/greenrobot/greendao/identityscope/c;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/b/a;->j:Lorg/greenrobot/greendao/identityscope/a;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lorg/greenrobot/greendao/identityscope/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/identityscope/a",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/b/a;->j:Lorg/greenrobot/greendao/identityscope/a;

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/b/a;->j:Lorg/greenrobot/greendao/identityscope/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/a;->a()V

    :cond_0
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/greenrobot/greendao/b/a;->a()Lorg/greenrobot/greendao/b/a;

    move-result-object v0

    return-object v0
.end method
