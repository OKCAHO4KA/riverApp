import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RiverApp')),
      body: _HomeScreenView(),
    );
  }
}

class _HomeScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _CustomListTile(
          title: 'State Provider',
          subtitle: 'Un estado simple',
          location: '/state-provider',
        ),
        _CustomListTile(
          title: 'Future Provider',
          subtitle: 'Un simple future + family',
          location: '/future-provider',
        ),
        _CustomListTile(
          title: 'Stream Provider',
          subtitle: 'Un simple Stream',
          location: '/stream-provider',
        ),
        _CustomListTile(
          title: 'State Notifier Provider',
          subtitle: 'Un provider con estado personalizado',
          location: '/state-notifier-provider',
        ),
      ],
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String location;

  const _CustomListTile(
      {required this.title, required this.subtitle, required this.location});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () => context.push(location),
    );
  }
}
