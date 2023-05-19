.class public final synthetic Landroidx/room/s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements La/a/a/c/a;


# static fields
.field public static final synthetic a:Landroidx/room/s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/room/s;

    invoke-direct {v0}, Landroidx/room/s;-><init>()V

    sput-object v0, Landroidx/room/s;->a:Landroidx/room/s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, La/g/a/f;

    invoke-interface {p1}, La/g/a/f;->C()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
