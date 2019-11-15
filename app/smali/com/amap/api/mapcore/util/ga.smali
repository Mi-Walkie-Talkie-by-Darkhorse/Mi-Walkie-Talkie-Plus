.class public Lcom/amap/api/mapcore/util/ga;
.super Ljava/lang/Object;
.source "ConstConfig.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field static c:[B

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "9aj&#k81"

    sput-object v0, Lcom/amap/api/mapcore/util/ga;->a:Ljava/lang/String;

    const-string v0, "IaHR0cDovL2xvZ3MuYW1hcC5jb20vd3MvbG9nL3VwbG9hZD9wcm9kdWN0PSVzJnR5cGU9JXMmcGxhdGZvcm09JXMmY2hhbm5lbD0lcyZzaWduPSVz"

    sput-object v0, Lcom/amap/api/mapcore/util/ga;->b:Ljava/lang/String;

    const-string v0, "9aj&#k81"

    sput-object v0, Lcom/amap/api/mapcore/util/ga;->a:Ljava/lang/String;

    const-string v0, "IaHR0cDovL2xvZ3MuYW1hcC5jb20vd3MvbG9nL3VwbG9hZD9wcm9kdWN0PSVzJnR5cGU9JXMmcGxhdGZvcm09JXMmY2hhbm5lbD0lcyZzaWduPSVz"

    sput-object v0, Lcom/amap/api/mapcore/util/ga;->b:Ljava/lang/String;

    const-string v0, "ADgAIwBbAA8AagAIAHIAEwCFAD8AxABDAQcAIQEoADgBYAA8AZwAnwI7APADKwAHAzIADAM+AA9LWVc1a2NtOXBaQzV2Y3k1VFpYSjJhV05sVFdGdVlXZGxjZ1FaMlYwVTJWeWRtbGpaUUljR2h2Ym1VVWFYQm9iMjVsYzNWaWFXNW1id01ZMjl0TG1GdVpISnZhV1F1YVc1MFpYSnVZV3d1ZEdWc1pYQm9iMjU1TGtsVVpXeGxjR2h2Ym5ra1UzUjFZZ1FZMjl0TG1GdVpISnZhV1F1YVc1MFpYSnVZV3d1ZEdWc1pYQm9iMjU1TGtsUWFHOXVaVk4xWWtsdVptOGtVM1IxWWdHVkZKQlRsTkJRMVJKVDA1ZloyVjBSR1YyYVdObFNXUT1FWTI5dExtRnVaSEp2YVdRdWFXNTBaWEp1WVd3dWRHVnNaWEJvYjI1NUxrbFVaV3hsY0dodmJua0lZMjl0TG1GdVpISnZhV1F1YVc1MFpYSnVZV3d1ZEdWc1pYQm9iMjU1TGtsUWFHOXVaVk4xWWtsdVptOEVJbXRsZVNJNklpVnpJaXdpY0d4aGRHWnZjbTBpT2lKaGJtUnliMmxrSWl3aVpHbDFJam9pSlhNaUxDSndhMmNpT2lJbGN5SXNJbTF2WkdWc0lqb2lKWE1pTENKaGNIQnVZVzFsSWpvaUpYTWlMQ0poY0hCMlpYSnphVzl1SWpvaUpYTWlMQ0p6ZVhOMlpYSnphVzl1SWpvaUpYTWlMQUdJbXRsZVNJNklpVnpJaXdpY0d4aGRHWnZjbTBpT2lKaGJtUnliMmxrSWl3aVpHbDFJam9pSlhNaUxDSnRZV01pT2lJbGN5SXNJblJwWkNJNklpVnpJaXdpZFcxcFpIUWlPaUlsY3lJc0ltMWhiblZtWVdOMGRYSmxJam9pSlhNaUxDSmtaWFpwWTJVaU9pSWxjeUlzSW5OcGJTSTZJaVZ6SWl3aWNHdG5Jam9pSlhNaUxDSnRiMlJsYkNJNklpVnpJaXdpWVhCd2RtVnljMmx2YmlJNklpVnpJaXdpWVhCd2JtRnRaU0k2SWlWeklnPUlZV2xrUFFNZkhObGNtbGhiRDBRWVc1a2NtOXBaRjlwWkE="

    sput-object v0, Lcom/amap/api/mapcore/util/ga;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/mapcore/util/ga;->c:[B

    return-void
.end method

.method public static a()Lcom/amap/api/mapcore/util/fx;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/fx$a;

    const-string v1, "aiu"

    const-string v2, "1.0.0"

    const-string v3, "aiu"

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/fx$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/fx$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore/util/fx$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fx$a;->a()Lcom/amap/api/mapcore/util/fx;
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fn; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(I)[B
    .locals 5

    const/4 v3, 0x4

    const/4 v4, 0x0

    sget-object v0, Lcom/amap/api/mapcore/util/ga;->c:[B

    if-nez v0, :cond_0

    sget-object v0, Lcom/amap/api/mapcore/util/ga;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/ga;->c:[B

    :cond_0
    new-array v0, v3, [B

    sget-object v1, Lcom/amap/api/mapcore/util/ga;->c:[B

    mul-int/lit8 v2, p0, 0x4

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x100

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit16 v2, v2, 0x100

    const/4 v3, 0x3

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v2

    new-array v2, v0, [B

    sget-object v3, Lcom/amap/api/mapcore/util/ga;->c:[B

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
