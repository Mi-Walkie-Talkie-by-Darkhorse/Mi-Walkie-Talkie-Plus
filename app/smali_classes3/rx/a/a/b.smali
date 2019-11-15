.class public Lrx/a/a/b;
.super Ljava/lang/Object;
.source "RxAndroidSchedulersHook.java"


# static fields
.field private static final a:Lrx/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrx/a/a/b;

    invoke-direct {v0}, Lrx/a/a/b;-><init>()V

    sput-object v0, Lrx/a/a/b;->a:Lrx/a/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lrx/a/a/b;
    .locals 1

    sget-object v0, Lrx/a/a/b;->a:Lrx/a/a/b;

    return-object v0
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/b/a;
    .locals 0

    return-object p1
.end method

.method public b()Lrx/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
