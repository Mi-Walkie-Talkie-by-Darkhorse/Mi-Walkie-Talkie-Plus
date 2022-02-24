.class public final synthetic Lbutterknife/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbutterknife/Unbinder;


# static fields
.field public static final synthetic a:Lbutterknife/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbutterknife/a;

    invoke-direct {v0}, Lbutterknife/a;-><init>()V

    sput-object v0, Lbutterknife/a;->a:Lbutterknife/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final unbind()V
    .locals 0

    invoke-static {}, Lbutterknife/b;->a()V

    return-void
.end method
