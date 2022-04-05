.class public Lcom/qmuiteam/qmui/arch/d;
.super Ljava/lang/Object;


# static fields
.field private static f:Ljava/lang/String; = "_qmui_nav"

.field private static g:Ljava/lang/String; = ".class"

.field private static h:Lcom/qmuiteam/qmui/arch/d;


# instance fields
.field private a:Lcom/qmuiteam/qmui/arch/record/QMUILatestVisitStorage;

.field private b:Landroid/content/Context;

.field private c:Lcom/qmuiteam/qmui/arch/record/RecordIdClassMap;

.field private d:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

.field private e:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/d;->b:Landroid/content/Context;

    new-instance p1, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditorImpl;

    invoke-direct {p1}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditorImpl;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/d;->d:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    new-instance p1, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditorImpl;

    invoke-direct {p1}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditorImpl;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/d;->e:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/qmuiteam/qmui/arch/record/RecordIdClassMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Impl"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/arch/record/RecordIdClassMap;

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/d;->c:Lcom/qmuiteam/qmui/arch/record/RecordIdClassMap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can not instance the Class RecordMetaMapImpl. Please file a issue to report this."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can not access the Class RecordMetaMapImpl. Please file a issue to report this."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    new-instance p1, Lcom/qmuiteam/qmui/arch/d$a;

    invoke-direct {p1, p0}, Lcom/qmuiteam/qmui/arch/d$a;-><init>(Lcom/qmuiteam/qmui/arch/d;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/d;->c:Lcom/qmuiteam/qmui/arch/record/RecordIdClassMap;

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/qmuiteam/qmui/arch/d;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Lcom/qmuiteam/qmui/arch/d;->h:Lcom/qmuiteam/qmui/arch/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qmuiteam/qmui/arch/d;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/arch/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qmuiteam/qmui/arch/d;->h:Lcom/qmuiteam/qmui/arch/d;

    :cond_0
    sget-object p0, Lcom/qmuiteam/qmui/arch/d;->h:Lcom/qmuiteam/qmui/arch/d;

    return-object p0
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/qmuiteam/qmui/arch/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a()V
    .locals 1

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/d;->c()Lcom/qmuiteam/qmui/arch/record/QMUILatestVisitStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/qmuiteam/qmui/arch/record/QMUILatestVisitStorage;->clearActivityStorage()V

    return-void
.end method

.method a(Lcom/qmuiteam/qmui/arch/a;)V
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/d;->c:Lcom/qmuiteam/qmui/arch/record/RecordIdClassMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/arch/record/RecordIdClassMap;->getIdByRecordClass(Ljava/lang/Class;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/d;->d:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    invoke-interface {v1}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;->clear()Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/d;->d:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    invoke-virtual {p1, v1}, Lcom/qmuiteam/qmui/arch/a;->onCollectLatestVisitArgument(Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;)V

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/d;->c()Lcom/qmuiteam/qmui/arch/record/QMUILatestVisitStorage;

    move-result-object p1

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/d;->d:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    invoke-interface {v1}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/qmuiteam/qmui/arch/record/QMUILatestVisitStorage;->saveActivityRecordInfo(ILjava/util/Map;)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/d;->d:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    invoke-interface {p1}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;->clear()Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    return-void
.end method

.method a(Lcom/qmuiteam/qmui/arch/b;)V
    .locals 8

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/d;->c:Lcom/qmuiteam/qmui/arch/record/RecordIdClassMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/arch/record/RecordIdClassMap;->getIdByRecordClass(Ljava/lang/Class;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/d;->d:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    invoke-interface {v1}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;->clear()Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/d;->e:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    invoke-interface {v1}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;->clear()Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/d;->d:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    invoke-virtual {p1, v1}, Lcom/qmuiteam/qmui/arch/b;->onCollectLatestVisitArgument(Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    instance-of v2, p1, Lcom/qmuiteam/qmui/arch/e;

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/arch/d;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/qmuiteam/qmui/arch/e;

    iget-object v4, p0, Lcom/qmuiteam/qmui/arch/d;->e:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    invoke-interface {v4}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;->clear()Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    iget-object v4, p0, Lcom/qmuiteam/qmui/arch/d;->e:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    invoke-virtual {v3, v4}, Lcom/qmuiteam/qmui/arch/b;->onCollectLatestVisitArgument(Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;)V

    iget-object v4, p0, Lcom/qmuiteam/qmui/arch/d;->e:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    invoke-interface {v4}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;->getAll()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/qmuiteam/qmui/arch/d;->d:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/qmuiteam/qmui/arch/d;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/qmuiteam/qmui/arch/d;->d:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;

    invoke-interface {v6, v7, v5}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;->put(Ljava/lang/String;Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor$Argument;)Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/d;->c()Lcom/qmuiteam/qmui/arch/record/QMUILatestVisitStorage;

    move-result-object p1

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/d;->d:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    invoke-interface {v1}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/qmuiteam/qmui/arch/record/QMUILatestVisitStorage;->saveFragmentRecordInfo(ILjava/util/Map;)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/d;->d:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    invoke-interface {p1}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;->clear()Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/d;->e:Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    invoke-interface {p1}, Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;->clear()Lcom/qmuiteam/qmui/arch/record/RecordArgumentEditor;

    return-void
.end method

.method b()V
    .locals 1

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/d;->c()Lcom/qmuiteam/qmui/arch/record/QMUILatestVisitStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/qmuiteam/qmui/arch/record/QMUILatestVisitStorage;->clearFragmentStorage()V

    return-void
.end method

.method c()Lcom/qmuiteam/qmui/arch/record/QMUILatestVisitStorage;
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/d;->a:Lcom/qmuiteam/qmui/arch/record/QMUILatestVisitStorage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qmuiteam/qmui/arch/record/DefaultLatestVisitStorage;

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/arch/record/DefaultLatestVisitStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/d;->a:Lcom/qmuiteam/qmui/arch/record/QMUILatestVisitStorage;

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/d;->a:Lcom/qmuiteam/qmui/arch/record/QMUILatestVisitStorage;

    return-object v0
.end method
