.class Landroidx/loader/a/b$c;
.super Landroidx/lifecycle/v;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static final b:Landroidx/lifecycle/w$b;


# instance fields
.field private a:La/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/h<",
            "Landroidx/loader/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/loader/a/b$c$a;

    invoke-direct {v0}, Landroidx/loader/a/b$c$a;-><init>()V

    sput-object v0, Landroidx/loader/a/b$c;->b:Landroidx/lifecycle/w$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/v;-><init>()V

    .line 2
    new-instance v0, La/b/h;

    invoke-direct {v0}, La/b/h;-><init>()V

    iput-object v0, p0, Landroidx/loader/a/b$c;->a:La/b/h;

    return-void
.end method

.method static getInstance(Landroidx/lifecycle/y;)Landroidx/loader/a/b$c;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/lifecycle/w;

    sget-object v1, Landroidx/loader/a/b$c;->b:Landroidx/lifecycle/w$b;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V

    const-class p0, Landroidx/loader/a/b$c;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object p0

    check-cast p0, Landroidx/loader/a/b$c;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/loader/a/b$c;->a:La/b/h;

    invoke-virtual {v0}, La/b/h;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroidx/loader/a/b$c;->a:La/b/h;

    invoke-virtual {v2, v1}, La/b/h;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/loader/a/b$a;

    .line 3
    invoke-virtual {v2}, Landroidx/loader/a/b$a;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 4
    iget-object v0, p0, Landroidx/loader/a/b$c;->a:La/b/h;

    invoke-virtual {v0}, La/b/h;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Landroidx/loader/a/b$c;->a:La/b/h;

    invoke-virtual {v2}, La/b/h;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 8
    iget-object v2, p0, Landroidx/loader/a/b$c;->a:La/b/h;

    invoke-virtual {v2, v1}, La/b/h;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/loader/a/b$a;

    .line 9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/loader/a/b$c;->a:La/b/h;

    invoke-virtual {v3, v1}, La/b/h;->b(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 10
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/loader/a/b$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, v0, p2, p3, p4}, Landroidx/loader/a/b$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCleared()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/v;->onCleared()V

    .line 2
    iget-object v0, p0, Landroidx/loader/a/b$c;->a:La/b/h;

    invoke-virtual {v0}, La/b/h;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/loader/a/b$c;->a:La/b/h;

    invoke-virtual {v2, v1}, La/b/h;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/loader/a/b$a;

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Landroidx/loader/a/b$a;->a(Z)Landroidx/loader/content/c;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/loader/a/b$c;->a:La/b/h;

    invoke-virtual {v0}, La/b/h;->clear()V

    return-void
.end method
