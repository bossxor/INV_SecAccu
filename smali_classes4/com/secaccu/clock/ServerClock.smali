.class public final Lcom/secaccu/clock/ServerClock;
.super Ljava/lang/Object;
.source "ServerClock.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/secaccu/clock/ServerClock$Snapshot;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0006J\u0006\u0010\r\u001a\u00020\u0004J\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/secaccu/clock/ServerClock;",
        "",
        "()V",
        "configured",
        "",
        "lastResult",
        "Lcom/secaccu/clock/SyncResult;",
        "referenceMonoMs",
        "",
        "referenceServerMs",
        "apply",
        "",
        "result",
        "isReady",
        "snapshot",
        "Lcom/secaccu/clock/ServerClock$Snapshot;",
        "Snapshot",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/secaccu/clock/ServerClock;

.field private static volatile configured:Z

.field private static lastResult:Lcom/secaccu/clock/SyncResult;

.field private static referenceMonoMs:D

.field private static referenceServerMs:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/secaccu/clock/ServerClock;

    invoke-direct {v0}, Lcom/secaccu/clock/ServerClock;-><init>()V

    sput-object v0, Lcom/secaccu/clock/ServerClock;->INSTANCE:Lcom/secaccu/clock/ServerClock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized apply(Lcom/secaccu/clock/SyncResult;)V
    .locals 4
    .param p1, "result"    # Lcom/secaccu/clock/SyncResult;

    monitor-enter p0

    :try_start_0
    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/secaccu/clock/ServerClock;->configured:Z

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-double v0, v0

    sput-wide v0, Lcom/secaccu/clock/ServerClock;->referenceMonoMs:D

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p1}, Lcom/secaccu/clock/SyncResult;->getOffsetMs()D

    move-result-wide v2

    add-double/2addr v0, v2

    sput-wide v0, Lcom/secaccu/clock/ServerClock;->referenceServerMs:D

    .line 17
    sput-object p1, Lcom/secaccu/clock/ServerClock;->lastResult:Lcom/secaccu/clock/SyncResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 13
    .end local p0    # "this":Lcom/secaccu/clock/ServerClock;
    .end local p1    # "result":Lcom/secaccu/clock/SyncResult;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized isReady()Z
    .locals 1

    monitor-enter p0

    .line 21
    :try_start_0
    sget-boolean v0, Lcom/secaccu/clock/ServerClock;->configured:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 21
    .end local p0    # "this":Lcom/secaccu/clock/ServerClock;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized snapshot()Lcom/secaccu/clock/ServerClock$Snapshot;
    .locals 17

    monitor-enter p0

    .line 25
    :try_start_0
    sget-boolean v0, Lcom/secaccu/clock/ServerClock;->configured:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 26
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-double v2, v2

    sget-wide v4, Lcom/secaccu/clock/ServerClock;->referenceMonoMs:D

    sub-double/2addr v2, v4

    .line 27
    .local v2, "elapsed":D
    sget-wide v4, Lcom/secaccu/clock/ServerClock;->referenceServerMs:D

    add-double/2addr v4, v2

    .line 28
    .local v4, "serverNow":D
    new-instance v0, Lcom/secaccu/clock/ServerClock$Snapshot;

    .line 29
    nop

    .line 30
    sget-object v6, Lcom/secaccu/clock/ServerClock;->lastResult:Lcom/secaccu/clock/SyncResult;

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/secaccu/clock/SyncResult;->getOffsetMs()D

    move-result-wide v9

    goto :goto_0

    .end local p0    # "this":Lcom/secaccu/clock/ServerClock;
    :cond_1
    move-wide v9, v7

    .line 31
    :goto_0
    sget-object v6, Lcom/secaccu/clock/ServerClock;->lastResult:Lcom/secaccu/clock/SyncResult;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/secaccu/clock/SyncResult;->getErrorMs()D

    move-result-wide v11

    goto :goto_1

    :cond_2
    move-wide v11, v7

    .line 32
    :goto_1
    sget-object v6, Lcom/secaccu/clock/ServerClock;->lastResult:Lcom/secaccu/clock/SyncResult;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/secaccu/clock/SyncResult;->getRttMs()D

    move-result-wide v6

    move-wide v13, v6

    goto :goto_2

    :cond_3
    move-wide v13, v7

    .line 33
    :goto_2
    sget-object v6, Lcom/secaccu/clock/ServerClock;->lastResult:Lcom/secaccu/clock/SyncResult;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/secaccu/clock/SyncResult;->getSiteName()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, v1

    :goto_3
    if-nez v6, :cond_5

    const-string v6, ""

    :cond_5
    move-object v15, v6

    .line 34
    sget-object v6, Lcom/secaccu/clock/ServerClock;->lastResult:Lcom/secaccu/clock/SyncResult;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/secaccu/clock/SyncResult;->getMode()Ljava/lang/String;

    move-result-object v1

    :cond_6
    if-nez v1, :cond_7

    const-string v1, ""

    :cond_7
    move-object/from16 v16, v1

    .line 28
    move-object v6, v0

    move-wide v7, v4

    invoke-direct/range {v6 .. v16}, Lcom/secaccu/clock/ServerClock$Snapshot;-><init>(DDDDLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 24
    .end local v2    # "elapsed":D
    .end local v4    # "serverNow":D
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
