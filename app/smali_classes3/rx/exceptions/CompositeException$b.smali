.class Lrx/exceptions/CompositeException$b;
.super Lrx/exceptions/CompositeException$a;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Ljava/io/PrintStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrx/exceptions/CompositeException$a;-><init>(Lrx/exceptions/CompositeException$1;)V

    iput-object p1, p0, Lrx/exceptions/CompositeException$b;->a:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lrx/exceptions/CompositeException$b;->a:Ljava/io/PrintStream;

    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lrx/exceptions/CompositeException$b;->a:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method
